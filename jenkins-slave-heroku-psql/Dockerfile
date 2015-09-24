FROM codetroopers/jenkins-slave-heroku

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"

RUN apt-get update && apt-get install -yqq postgresql-client && \
    apt-get clean && \
    rm -rf /var/lib/dpkg/info/* && \
    rm -rf /var/lib/apt
