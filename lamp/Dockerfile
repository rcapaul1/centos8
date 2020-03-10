FROM centos:8
RUN yum install git wget epel-release net-tools -y && yum remove firewalld -y && yum update -y && yum install httpd php mariadb-server -y
CMD php -v
