FROM ubuntu:18.04
LABEL maintainer="kakky.ryouhei@gmail.com"
ENV DIRPATH /root
ENV DISPLAY host.docker.internal:0.0
WORKDIR $DIRPATH/work
RUN apt update && apt install -y \
    make \
    mtools \
    qemu-system-i386 \
    nasm \
    gcc \
    libx11-dev \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash"]
