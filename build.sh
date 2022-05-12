#!/bin/bash

docker stop kcat
docker rm kcat
docker build -t kcat .
docker run -d --name kcat kcat
docker ps -a
