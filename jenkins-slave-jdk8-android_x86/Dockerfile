FROM codetroopers/jenkins-slave-jdk8

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"

ENV PATH $PATH:$ANDROID_HOME/tools
ENV PATH $PATH:$ANDROID_HOME/platform-tools
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y --force-yes expect git wget libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1  qemu-kvm kmod && apt-get clean

# Install Android SDK
RUN cd /opt && wget --output-document=android-sdk.tgz --quiet http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz && tar xzf android-sdk.tgz && rm -f android-sdk.tgz && chown -R jenkins.jenkins android-sdk-linux 

# Setup environment
ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

# Install sdk elements
COPY tools /opt/tools
ENV PATH ${PATH}:/opt/tools

USER jenkins

RUN ["/opt/tools/android-accept-licenses.sh", "android update sdk --all --no-ui --filter platform-tools,tools,build-tools-22.0.1,android-19,addon-google_apis_x86-google-19,extra-android-support,extra-android-m2repository,extra-google-m2repository,sys-img-x86-android-19"]

RUN which adb
RUN which android

USER root
RUN usermod -a -G kvm jenkins
RUN echo ANDROID_HOME="$ANDROID_HOME" >> /etc/environment

CMD ["/opt/tools/entrypoint.sh"]
