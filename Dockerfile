FROM ubuntu:bionic
WORKDIR /var/source
RUN apt-get update && \
  apt-get install -y python3.7 python3.7-venv python3.7-dev python3-pip \
  mecab libmecab-dev mecab-ipadic-utf8 \
  git make curl xz-utils file sudo wget swig vim locales locales-all nkf

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git\
    && cd mecab-ipadic-neologd\
    && bin/install-mecab-ipadic-neologd -n -y

RUN pip3 install gensim
RUN pip3 install mecab-python3
RUN pip3 install numpy
