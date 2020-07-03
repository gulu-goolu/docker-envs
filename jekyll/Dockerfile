FROM ubuntu

# 控制权限，与创建镜像的用户权限保持一致
ARG UID
ARG GID
RUN groupadd -g $GID dummy && useradd -m -r --uid $UID -g dummy --groups "0" dummy

# 设置工作目录
RUN mkdir /data && chown -R dummy:dummy /data 

# 安装依赖
RUN apt-get update && apt-get install -y ruby-full build-essential zlib1g-dev

USER dummy
ENV GEM_HOME="/home/dummy/gems"
ENV PATH="$GEM_HOME/bin:$PATH"
RUN gem install jekyll bundler

CMD ["/bin/bash"]
