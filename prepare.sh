#!/bin/bash

apt-get update
apt-get upgrade
apt-get install aptitude bash-completion tmux nano git 
ssh-keygen
touch .ssh/authorized_keys
chmod 600 .ssh/authorized_keys

echo "Europe/Moscow" > /etc/timezone
sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.alias
locale-gen en_US.UTF-8
DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
dpkg-reconfigure -f noninteractive tzdata
echo "Europe/Moscow" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata
echo 'LANGUAGE="en_US.UTF-8"' >> /etc/default/locale
echo 'LC_ALL="en_US.UTF-8"' >> /etc/default/locale

