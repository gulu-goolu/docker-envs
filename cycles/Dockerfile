FROM ubuntu
# 安装依赖
RUN export DEBIAN_FRONTEND=noninteractive &&\
    apt-get update &&\
    apt-get install -y git make clang cmake rsync gdb gdbserver openssh-server\
    freeglut3-dev libopenimageio-dev libboost-filesystem-dev\
    libboost-regex-dev libboost-thread-dev libglew-dev libopenexr-dev


RUN useradd -m dev
RUN echo "dev:pwd" | chpasswd

EXPOSE 22 7777

# 下载源代码
RUN mkdir /data && cd /data && \
    git clone git://git.blender.org/cycles.git

# 编译
RUN mkdir -p /data/cycles/build && cd /data/cycles/build && \
    cmake .. && make -j 24
