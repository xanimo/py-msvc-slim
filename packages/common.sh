#!/usr/bin/bash

apt-get update
DEBIAN_FRONTEND="noninteractive" \
apt-get install -y \
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
nano \
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
xvfb \
zenity

locale-gen en_US.UTF-8
export LANG=en_US.UTF-8