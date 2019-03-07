#!/bin/bash

# yum -y install git golang
# apt-get -y install git golang

pushd ~/

sudo yum -y install yum-utils
sudo yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
sudo yum -y install openresty-resty
sudo yum --disablerepo="*" --enablerepo="openresty" list available

popd
