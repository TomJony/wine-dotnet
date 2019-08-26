FROM debian:stretch-slim
RUN set -x \
  && dpkg --add-architecture i386 \
  && apt update && apt install -y wget gnupg2 software-properties-common cabextract p7zip unzip winbind zenity \
  && wget -nc https://dl.winehq.org/wine-builds/winehq.key \
  && apt-key add winehq.key \
  && echo "deb http://dl.winehq.org/wine-builds/debian/ stretch main" > /etc/apt/sources.list.d/wine.list \
  && apt update && apt install --install-recommends -y winehq-stable \
  && wget 'https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks' -O /usr/bin/winetricks \
  && chmod +x /usr/bin/winetricks


