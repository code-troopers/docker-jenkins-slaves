FROM evarga/jenkins-slave
MAINTAINER Benjamin COUSIN "b.cousin@code-troopers.com"
MAINTAINER bitard [DOT] michael [AT] gmail [DOT] com

# Install ruby
RUN apt-get update && \
    apt-get install -y git ca-certificates apt-transport-https curl libfontconfig sudo ruby ruby-dev ruby-bundler && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD nodesource.list /etc/apt/sources.list.d/nodesource.list

RUN curl -k -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    apt-get update && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN cd /tmp && \
    wget http://www.nasm.us/pub/nasm/releasebuilds/2.11.06/nasm-2.11.06.tar.gz && \
    tar xvzf nasm-*.tar.gz && \
    cd nasm-* && \
    ./configure && \
    make && \
    sudo make install && \
    rm -rf nasm-*

RUN npm install -g gulp && \
    npm install -g grunt && \
    npm install -g grunt-cli && \
    npm install -g bower

RUN gem install jekyll rdiscount kramdown

VOLUME /src
EXPOSE 9002

WORKDIR /src
