#include <stdio.h>

void hello(const char *text) {
	printf("%s\n", text);
	return;
}

int main(void) {
	char *text = "hello world with C language";
	hello(text);
	return 0;
}

/*
usage :
hoge@hige $ apt install build-essential
hoge@hige $ gcc -o hello.bin hello.c
hoge@ihge $ ./hello.bin
*/

