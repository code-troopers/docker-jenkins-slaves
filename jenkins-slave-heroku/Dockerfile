FROM evarga/jenkins-slave

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"
ENV DEBIAN_FRONTEND noninteractive
RUN wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
RUN heroku plugins:install https://github.com/heroku/heroku-repo.git

COPY entrypoint.sh /usr/bin/entrypoint.sh
CMD "entrypoint.sh"
