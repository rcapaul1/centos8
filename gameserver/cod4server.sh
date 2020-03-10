#!/bin/bash

yum install epel-release -y && yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 -y

adduser cod4server
passwd cod4server
su - cod4server