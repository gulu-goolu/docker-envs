#!/bin/bash
# 构建镜像
docker build --build-arg UID=$UID --build-arg GID=$(id --group) -t jekyll-env .
