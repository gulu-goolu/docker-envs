#!/bin/bash
docker build --build-arg UID=$UID --build-arg GID=$(id --group) -t jekyll-env .
