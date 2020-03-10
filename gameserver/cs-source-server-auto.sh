#!/bin/bash

adduser cssserver
passwd cssserver

yum install epel-release -y && yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 ncurses-libs.i686 -y

cd /home/cssserver
su cssserver -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh cssserver"
su cssserver -c "./cssserver ai"
