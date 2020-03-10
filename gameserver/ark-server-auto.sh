#!/bin/bash

adduser arkserver
passwd arkserver
yum install epel-release -y && yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 -y
cd /home/arkserver
su arkserver -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh arkserver"
su arkserver -c "./arkserver ai"
