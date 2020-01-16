#!/bin/bash

apt-get update
apt-get install wget -y
wget -O cf.tgz 'https://packages.cloudfoundry.org/stable?release=linux64-binary&version=6.49.0&source=github-rel'
tar xfz cf.tgz 
chmod +x cf
mv cf /usr/local/bin/cf