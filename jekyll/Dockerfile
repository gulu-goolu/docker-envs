FROM ubuntu

# 安装依赖
RUN apt-get update && apt-get install -y ruby-full build-essential zlib1g-dev
RUN gem install jekyll bundler

# 控制权限，与创建镜像的用户权限保持一致
ARG UID
ARG GID
RUN groupadd -g $GID dummy && useradd -r --uid $UID -g dummy dummy
USER dummy

# 更改工作目录
WORKDIR /data
VOLUME /data
