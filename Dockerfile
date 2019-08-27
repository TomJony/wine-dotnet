FROM ubuntu:18.04
RUN set -x \
  && dpkg --add-architecture i386 \
  && apt update && apt install -y wget gnupg2 software-properties-common cabextract p7zip unzip winbind zenity \
  && wget -nc https://dl.winehq.org/wine-builds/winehq.key \
  && apt-key add winehq.key \
  && echo 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' > /etc/apt/sources.list.d/wine.list \
  && apt update && apt install -y --install-recommends winehq-stable \
  && wget 'https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks' -O /usr/bin/winetricks \
  && chmod +x /usr/bin/winetricks


