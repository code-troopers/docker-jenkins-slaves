FROM evarga/jenkins-slave

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive
# install python-software-properties (so you can do add-apt-repository)
RUN apt-get update
RUN apt-get install -y -q software-properties-common

RUN apt-get install -y -q git
# install oracle java from PPA
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java8-installer && apt-get clean

# Set oracle java as the default java
RUN update-java-alternatives -s java-8-oracle
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
