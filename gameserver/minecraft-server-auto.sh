#!/bin/bash

adduser mcserver
passwd mcserver

yum install epel-release -y && yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux java-1.8.0-openjdk -y

cd /home/mcserver

su mcserver -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh mcserver"
su mcserver -c "./mcserver ai"
