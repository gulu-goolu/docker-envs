FROM ubuntu

# 设置工作目录
VOLUME /data
WORKDIR /data

# 控制权限，与创建镜像的用户权限保持一致
ARG UID
ARG GID
RUN groupadd -g $GID dummy && useradd -d /data -r --uid $UID -g dummy dummy
USER dummy

# 安装依赖
RUN apt-get update && apt-get install -y ruby-full build-essential zlib1g-dev
# 设置环境变量
ENV GEM_HOME=/data/gems PATH=$GEM_HOME/bin:$PATH
# 安装 jekyll
RUN gem install jekyll bundler

CMD ["/bin/bash"]
