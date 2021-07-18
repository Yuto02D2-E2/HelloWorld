#include <iostream>

void hello(const std::string text) {
	std::cout << text << std::endl;
	return;
}

int main() {
	std::string text = "hello world with C++ language";
	hello(text);
	return 0;
}

/*
usage:
hoge@hige $ apt install build-essential
hoge@hige $ g++ -o hello.bin hello.cc
hoge@hige $ ./hello.bin
*/

