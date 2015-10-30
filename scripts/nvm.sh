#!/bin/bash

node_version=$1

echo "setting up nvm"

cd /home/vagrant
curl https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile

nvm install $node_version
nvm alias default $node_version
nvm use $node_version
