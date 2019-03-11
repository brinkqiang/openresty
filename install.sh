#!/bin/bash

# yum -y install git golang
# apt-get -y install git golang

pushd ~/
sudo yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
sudo yum -y install yum-utils
sudo yum -y install openresty-resty
yum --disablerepo="*" --enablerepo="openresty" list available

sudo groupadd nginx
sudo useradd -g nginx -s /sbin/nologin -M nginx
sudo openresty -s stop
sudo openresty -t
sudo openresty -c /usr/local/openresty/nginx/conf/nginx.conf
ps axu | grep "nginx: master process" | grep -v grep | awk '{print $2 }'

popd
