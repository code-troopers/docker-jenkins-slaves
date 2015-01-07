FROM codetroopers/jenkins-slave-jdk8-mvn

MAINTAINER Benjamin Cousin "b.cousin@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive

# Install node.js from PPA
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get -y install nodejs

# Install bower and grunt
RUN npm install -g bower grunt grunt-cli
