FROM ubuntu:latest

#MAINTAINER BioH4z <https://github.com/BioH4z>

# Set the working directory to /home
WORKDIR /home

# Set shell for conda
SHELL ["/bin/bash", "-c"] 

#set User ROOT
USER root

# config problems about region and time 
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# install libraries
RUN apt-get update -y \
	&& apt-get install -y build-essential cmake pkg-config nano apt-utils\
	git \
	pigz unzip\
	curl \
	wget \
	locales \
	python3-dev python3-tk python-imaging-tk \
	python3-pip \
	&& locale-gen en_US.UTF-8

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

#END
