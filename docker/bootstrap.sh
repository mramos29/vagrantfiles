#!/bin/bash

# Install docker and git clone my dockerfiles
locale-gen UTF-8
apt-get install -y docker docker.io
cd /root
git clone https://github.com/mramos29/dockerfiles
