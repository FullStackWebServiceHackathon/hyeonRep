# node in ubuntu
FROM ubuntu:18.04
# bash 사용하기
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# 필요한 패키지 설치하기 (alpine에서는 apk를 이용해서 패키지를 설치함)
RUN apt-get update
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN apt-get install -y curl
RUN apt-get install git -y

# 1. Dockerfile을 먼저 빌드해주세요
#   docker build -t ubuntu_front .
# 2. 만들어진 이미지를 이용해서 docker container를 만들어주세요
#   docker run -it -d --name tschauss_front -p 80:5555 ubuntu_front