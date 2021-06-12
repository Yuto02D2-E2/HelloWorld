#!/bin/sh

if [ $# -eq 1 ]; then
	NAME=$1
else
	NAME="world"
fi

echo "now : $(date +%F)"
echo "hello $NAME with shell script"

# usage :
# hoge@hige $ sh hello.sh
# or
# hoge@hige $ ./hello.sh

# Attention
# this script file can be used only with unix shells, not with windows command prompt and windows powershell
# if you want to use it on windows, please use gitbash or wsl and so on.
