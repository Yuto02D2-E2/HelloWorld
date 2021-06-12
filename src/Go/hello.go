package main

import (
	"fmt"
)

func main() {
	fmt.Println("hello world with Go language")
}

/*
usage:
install go from (https://golang.org/dl/)
				(https://golang.org/doc/install)

ex)wsl2
hoge@hige $ wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz
hoge@hige $ sudo tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz
add "export PATH=$PATH:/usr/local/go/bin" to user/.profile
hoge@hige $ go run hello.go

cf) A Tour of Go(ja)
(https://go-tour-jp.appspot.com/welcome/1)

*/
