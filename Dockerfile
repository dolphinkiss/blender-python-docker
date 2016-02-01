FROM ubuntu:14.04
MAINTAINER Peter Lauri <peterlauri@gmail.com>

#######################################################
# OS Updates and Python packages
#######################################################

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y

RUN apt-get install -y wget libfreetype6 libglu1-mesa libxi6

RUN wget http://ftp.halifax.rwth-aachen.de/blender/release/Blender2.76/blender-2.76b-linux-glibc211-x86_64.tar.bz2
RUN tar xvf blender-2.76b-linux-glibc211-x86_64.tar.bz2
ENV PATH /blender-2.76b-linux-glibc211-x86_64:$PATH

RUN mkdir -p /workdir
WORKDIR /workdir
