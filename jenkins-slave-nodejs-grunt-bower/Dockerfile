FROM codetroopers/jenkins-slave-nodejs

MAINTAINER Bollot Matthieu "m.bollot@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive

# we chmod directories node_modules and bower_components so that if we want to use volumes with a specific user we can write in them
RUN mkdir /node_modules && mkdir /bower_components && chmod 777 /node_modules && chmod 777 /bower_components

# Install Bower & Grunt
RUN npm install -g bower grunt-cli
