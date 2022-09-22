#!/usr/bin/bash

apt-get update
apt-get install -y wget
dpkg --add-architecture i386
wget -nc -O /usr/share/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
wget -nc -P /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
apt-get update
DEBIAN_FRONTEND="noninteractive" apt-get install -y --install-recommends \
apt-transport-https \
ca-certificates \
cabextract \
curl \
git \
gnupg \
gosu \
gpg-agent \
locales \
msitools \
p7zip \
pulseaudio \
pulseaudio-utils \
python-is-python3 \
python3-pip \
python3-setuptools \
python3-simplejson \
python3-six \
python3-venv \
sudo \
tzdata \
unzip \
wget \
winbind \
winehq-devel \
xvfb \
zenity
apt-get clean -y
rm -rf /var/lib/apt/lists/*

locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export WINEDEBUG="-all"
WINEPREFIX="$HOME/.wine" WINEARCH=win64 wine64 wineboot
