FROM codetroopers/jenkins-slave-jdk8

MAINTAINER Benjamin Cousin "b.cousin@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive

# Let's start with some basic stuff.
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    lxc \
    iptables \
    curl \
    sshpass \
    make

# Install Docker from Docker Inc. repositories.
RUN echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list \
  && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9 \
  && apt-get update -qq \
  && apt-get install -qqy lxc-docker-1.7.1

RUN curl -L https://github.com/docker/compose/releases/download/1.3.3/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
 && chmod +x /usr/local/bin/docker-compose
