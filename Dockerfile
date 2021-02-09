FROM ubuntu:20.04

RUN ln -fs /usr/share/zoneinfo/Europe/Paris /etc/localtime \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      build-essential \
      cmake \
      emacs \
      mpich \
      tmate \
     vim
RUN mkdir /src
WORKDIR /src
CMD tmate
