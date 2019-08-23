FROM debian:sid-slim
RUN set -x \
  && dpkg --add-architecture i386 \
  && apt update && apt install -y wget gnupg2 software-properties-common \
  && wget -nc https://dl.winehq.org/wine-builds/Release.key \
  && apt-key add Release.key \
  && echo "deb https://dl.winehq.org/wine-builds/debian/ stretch main" >> /etc/apt/sources.list.d/wine.list \
  && apt update && apt install --install-recommends winehq-stable
