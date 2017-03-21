FROM node:7.7

ARG DEBIAN_FRONTEND=noninteractive

# install python, pip
RUN apt-get -qq update
RUN apt-get -qq install apt-utils
RUN apt-get -qq install python3.4 python3-pip

# install awscli
RUN pip3 install awscli
