FROM centos:8
RUN yum install git wget net-tools epel-release -y && yum remove firewalld -y && yum update -y && yum groupinstall -y "Development Tools" && exit
