#!/bin/bash

adduser cod4server
passwd cod4server

yum install epel-release -y && yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 -y

cd /home/cod4server
su cod4server -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh cod4server"
su cod4server -c "./cod4server ai"
