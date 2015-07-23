FROM codetroopers/jenkins-slave-jdk8-sbt-nodejs

MAINTAINER Bollot Matthieu "m.bollot@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --force-yes build-essential

# Install Bower & Grunt
RUN npm install -g bower grunt-cli
