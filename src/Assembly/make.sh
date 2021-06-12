#!/bin/sh

if [ $# -ne 1 ]; then
    echo "usage : sh make.sh <assembly file name without extension(.s or .asm)> " 1>&2
    exit 0
fi

if [ -e $1.obj ]; then
    rm $1.obj
fi
if [ -e $1.bin ]; then
    rm $1.bin
fi

echo -n "ls > "
ls
nasm -f elf64 -o $1.obj $1.asm
ld -s -o $1.bin $1.obj
echo -n "ls > "
ls
echo "\ncompile and link are done. now execute program\n->"
./$1.bin
