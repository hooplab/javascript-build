FROM node:16@sha256:9627b22e9e2e13ee0dbe692d85f3350c082c2b085e4e53114a016143dbc472f2

ARG DEBIAN_FRONTEND=noninteractive

# install python, pip
RUN apt-get -qq update
RUN apt-get -qq install apt-utils
RUN apt-get -qq install python3.4 python3-pip

# install awscli
RUN pip3 install awscli

# install curl
RUN apt-get -qq install curl

# Install deps for cypress
RUN apt-get -qq install xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2
