#!/usr/bin/bash

cd ~ && mkdir software
cd software/
yum install -y wget gcc vim mlocate zlib-devel openssl-devel openssh-clients ntp net-tools lrzsz gcc-c++
ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
setenforce 0
sed -i 's/enforcing/disabled/g' /etc/selinux/config
systemctl stop firewalld
systemctl disable firewalld
systemctl stop NetworkManager
systemctl disable NetworkManager


