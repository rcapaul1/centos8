#!/bin/bash

adduser sof2server
passwd sof2server

yum install epel-release -y && yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 -y

cd /home/sof2server
su sof2server -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh sof2server"
su sof2server -c "./sof2server ai"