#! /bin/sh

set -e

cd /

aarch64-linux-gnu-gcc -static main.c add.s
qemu-aarch64 ./a.out
