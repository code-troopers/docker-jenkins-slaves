FROM codetroopers/jenkins-slave-jdk8-sbt

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository ppa:chris-lea/node.js && apt-get update && apt-get -y install nodejs && apt-get clean
