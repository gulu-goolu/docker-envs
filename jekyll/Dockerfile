FROM ubuntu

RUN apt-get update && apt-get install -y ruby-full build-essential zlib1g-dev

RUN gem install jekyll bundler

ARG UID
ARG GID
RUN groupadd -g $GID dummy && useradd -r --uid $UID -g dummy dummy
USER dummy

WORKDIR /data
VOLUME /data
