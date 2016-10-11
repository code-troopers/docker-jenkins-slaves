FROM codetroopers/jenkins-slave-jdk8

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"

ENV PATH $PATH:$ANDROID_HOME/tools
ENV PATH $PATH:$ANDROID_HOME/platform-tools
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y --force-yes expect git wget libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 && apt-get clean

# Install Android SDK
ENV SDK_VERSION "r24.4.1"
RUN cd /opt && wget --output-document=android-sdk.tgz --quiet https://dl.google.com/android/android-sdk_${SDK_VERSION}-linux.tgz && tar xzf android-sdk.tgz && rm -f android-sdk.tgz && chown -R jenkins.jenkins android-sdk-linux

# Setup environment
ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

# Install sdk elements
COPY tools /opt/tools
ENV PATH ${PATH}:/opt/tools

USER jenkins

ENV BUILD_TOOLS_VERSION 23.0.3
ENV ANDROID_VERSION 24
RUN ["/opt/tools/android-accept-licenses.sh", "android update sdk --all --no-ui --filter platform-tools,build-tools-${BUILD_TOOLS_VERSION},android-${ANDROID_VERSION},addon-google_apis_x86-google-${ANDROID_VERSION},extra-android-support,extra-android-m2repository,extra-google-m2repository,sys-img-armeabi-v7a-android-${ANDROID_VERSION}"]

RUN which adb
RUN which android

USER root

RUN echo ANDROID_HOME="$ANDROID_HOME" >> /etc/environment
