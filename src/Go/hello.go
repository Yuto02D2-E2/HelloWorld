package main

import (
	"fmt"
)

func hello(text string) {
	fmt.Println(text)
	return
}

func main() {
	var text string = "hello world with Go language"
	hello()
	return
}

/*
usage:

install go from (https://golang.org/dl/), (https://golang.org/doc/install)

ex) wsl2
*install
	hoge@hige $ wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz
	hoge@hige $ sudo tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz
	add "export PATH=$PATH:/usr/local/go/bin" to user/.profile

*execute
	hoge@hige $ go run hello.go
or
	hoge@hige $ go build hello.go
	hoge@hige $ ./hello


cf) A Tour of Go(ja)
(https://go-tour-jp.appspot.com/welcome/1)
*/

