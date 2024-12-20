# Docker Hub: https://hub.docker.com/r/simplatex/android-lightweight

FROM ubuntu:24.04

LABEL maintainer "simplatex.com.au@gmail.com"

WORKDIR /

SHELL ["/bin/bash", "-c"]

# To avoid "tzdata" asking for geographic area
ARG DEBIAN_FRONTEND=noninteractive

# Version of tools:
# In Code
ARG GRADLE_VERSION=8.11.1
ARG ANDROID_API_LEVEL=35
# https://developer.android.com/studio/releases/build-tools
ARG ANDROID_BUILD_TOOLS_LEVEL=36.0.0-rc1
# https://developer.android.com/ndk/downloads
ARG ANDROID_NDK_VERSION=28.0.12674087
# https://developer.android.com/studio/
ARG ANDROID_CMD_LINE_TOOLS=linux-11076708_latest
# https://developer.android.com/build/jdks
ARG OPEN_JDK=openjdk-17-jdk

# Dependencies and tools
RUN apt update -qq
RUN apt install -qq -y ${OPEN_JDK} vim git unzip libglu1 libpulse-dev libasound2t64 libc6  libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxi6  libxtst6 libnss3 wget

# Download gradle, install gradle and gradlew
RUN wget -q https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -P /tmp
RUN unzip -q -d /opt/gradle /tmp/gradle-${GRADLE_VERSION}-bin.zip
RUN mkdir /opt/gradlew
RUN touch /opt/gradlew/settings.gradle
RUN /opt/gradle/gradle-${GRADLE_VERSION}/bin/gradle wrapper --gradle-version ${GRADLE_VERSION} --distribution-type all -p /opt/gradlew
RUN /opt/gradle/gradle-${GRADLE_VERSION}/bin/gradle wrapper -p /opt/gradlew

# Download commandlinetools
RUN mkdir /opt/android
RUN mkdir /opt/android/cmdline-tools
RUN wget -q https://dl.google.com/android/repository/commandlinetools-${ANDROID_CMD_LINE_TOOLS}.zip -P /tmp
RUN unzip -q -d /opt/android/cmdline-tools /tmp/commandlinetools-${ANDROID_CMD_LINE_TOOLS}.zip

# install packages and accept all licenses
# cmdline-tools/cmdline-tools - the second "cmdline-tools" is the folder in the zip file
RUN yes Y | /opt/android/cmdline-tools/cmdline-tools/bin/sdkmanager --install "build-tools;${ANDROID_BUILD_TOOLS_LEVEL}" "platforms;android-${ANDROID_API_LEVEL}" "platform-tools" "ndk;${ANDROID_NDK_VERSION}" \
&& yes Y | /opt/android/cmdline-tools/cmdline-tools/bin/sdkmanager --licenses

# Environment variables to be used for build
ENV GRADLE_HOME=/opt/gradle/gradle-$GRADLE_VERSION
ENV ANDROID_HOME=/opt/android
ENV ANDROID_NDK_HOME=${ANDROID_HOME}/ndk/${ANDROID_NDK_VERSION}
ENV PATH "$PATH:$GRADLE_HOME/bin:/opt/gradlew:$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/tools/bin:$ANDROID_HOME/platform-tools:${ANDROID_NDK_HOME}"
ENV LD_LIBRARY_PATH "$ANDROID_HOME/emulator/lib64:$ANDROID_HOME/emulator/lib64/qt/lib"

# Clean up
RUN rm /tmp/gradle-${GRADLE_VERSION}-bin.zip \
&& rm /tmp/commandlinetools-${ANDROID_CMD_LINE_TOOLS}.zip
