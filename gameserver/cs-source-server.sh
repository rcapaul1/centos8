#!/bin/bash

yum install epel-release -y && yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 ncurses-libs.i686 -y

adduser cssserver
passwd cssserver
su - cssserver