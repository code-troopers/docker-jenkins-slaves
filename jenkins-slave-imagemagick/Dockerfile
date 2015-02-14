FROM evarga/jenkins-slave

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y -q install imagemagick wget unzip git && apt-get clean
