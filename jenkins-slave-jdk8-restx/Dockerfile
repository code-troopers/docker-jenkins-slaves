FROM codetroopers/jenkins-slave-jdk8-mvn

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive

# Install node.js from PPA
RUN apt-get -y install curl make g++
RUN apt-add-repository -y ppa:brightbox/ruby-ng
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update
#RUN apt-get dist-upgrade -q -y
#RUN cat /etc/debian_version
RUN apt-get -y install nodejs ruby2.4 ruby2.4-dev
RUN gem install sass compass --no-ri --no-rdoc
# Install bower and grunt
RUN npm install -g bower grunt grunt-cli
# Install local grunt for tests
RUN npm install grunt
