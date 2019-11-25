#!/usr/bin/env bash

# Install system deps
apt-get update
apt-get install -y \
    python3 \
    python3-pip \
    nodejs \
    npm \
    graphviz \
    make \
    gnat

# Install learn deps
cd /vagrant/frontend
pip3 install -r requirements.txt

# Install yarn
apt remove cmdtest
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install yarn

yarn
