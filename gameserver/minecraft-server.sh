#!/bin/bash

yum install epel-release -y && yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux java-1.8.0-openjdk -y

adduser mcserver
passwd mcserver
su - mcserver