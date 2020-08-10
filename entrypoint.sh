#! /bin/sh

set -e

cd /

pwd 1>&2
ls 1>&2
aarch64-linux-gnu-gcc -static main.c add.s
qemu-aarch64 ./a.out
