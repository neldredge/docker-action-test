FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y qemu-user gcc-aarch64-linux-gnu
COPY main.c /main.c
COPY add.s /add.s
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

