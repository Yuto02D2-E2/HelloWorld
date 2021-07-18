#!/bin/sh

function hello() {
	echo "$1"
	return
}

text="hello world with shell script"
hello "$text"

# usage :
# hoge@hige $ sh hello.sh
# or
# hoge@hige $ ./hello.sh

# Attention
# this script file can be used only with unix shells, not with windows command prompt and windows powershell
# if you want to use it on windows, please use gitbash or wsl and so on.
