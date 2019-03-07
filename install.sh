#!/bin/bash

# yum -y install git golang
# apt-get -y install git golang

pushd ~/

yum -y install yum-utils
yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
yum -y install openresty-resty
yum --disablerepo="*" --enablerepo="openresty" list available

popd
