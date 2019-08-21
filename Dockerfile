FROM ubuntu:18.04
RUN set -x \
  && dpkg --add-architecture i386 \
  && apt update && apt install -y wget gnupg2 software-properties-common \
  && wget -nc https://dl.winehq.org/wine-builds/winehq.key \
  && apt-key add winehq.key \
  && apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' \
  && apt update && apt install -y --install-recommends winehq-stable
