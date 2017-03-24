#!/bin/bash

locale-gen UTF-8

# Install Puppet
wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
apt-get update
apt-get -y install puppet

# Install docker and git clone my dockerfiles
apt-get -y install docker docker.io
cd /root
git clone https://github.com/mramos29/dockerfiles

