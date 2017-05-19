FROM codetroopers/jenkins-slave-jdk8

MAINTAINER Cedric Gatay "c.gatay@code-troopers.com"

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y --force-yes expect git wget libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1 unzip && apt-get clean

COPY scripts /opt/scripts

# Install Android tools
ENV SDK_VERSION "r25.2.5"
RUN mkdir /opt/android-sdk-linux && cd /opt/android-sdk-linux && wget --output-document=tools-sdk.zip --quiet https://dl.google.com/android/repository/tools_${SDK_VERSION}-linux.zip && unzip tools-sdk.zip && rm -f tools-sdk.zip && chmod +x /opt/scripts/android-accept-licenses.sh && chown -R jenkins.jenkins /opt

# Setup environment
ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

USER jenkins

ENV BUILD_TOOLS_VERSION 25.0.3
ENV ANDROID_VERSION 25
RUN /opt/scripts/android-accept-licenses.sh "sdkmanager platform-tools \"build-tools;${BUILD_TOOLS_VERSION}\" \"platforms;android-${ANDROID_VERSION}\" \"add-ons;addon-google_apis-google-24\" \"extras;m2repository;com;android;support;constraint;constraint-layout;1.0.2\" \"extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.2\" \"system-images;android-${ANDROID_VERSION};google_apis;armeabi-v7a\" ndk-bundle"

RUN which adb
RUN which android

USER root

RUN echo ANDROID_HOME="$ANDROID_HOME" >> /etc/environment
