FROM ubuntu:14.04
MAINTAINER Peter Lauri <peterlauri@gmail.com>

#######################################################
# OS Updates and Python packages
#######################################################

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y

RUN apt-get install -y wget libfreetype6 libglu1-mesa libxi6

RUN apt-get update
RUN apt-get install -y python3-dev python3-setuptools
RUN easy_install3 pip
RUN pip install --upgrade pip
RUN pip install virtualenv
RUN pip install PyYAML

RUN wget http://ftp.halifax.rwth-aachen.de/blender/release/Blender2.76/blender-2.76b-linux-glibc211-x86_64.tar.bz2
RUN tar xvf blender-2.76b-linux-glibc211-x86_64.tar.bz2
ENV PATH /blender-2.76b-linux-glibc211-x86_64:$PATH

RUN mkdir -p /workdir
WORKDIR /workdir
