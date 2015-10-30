#! /bin/bash

sudo apt-get update

echo "intalling git"
sudo apt-get install -y git-core

echo "intalling curl"
sudo apt-get install -y curl

echo "build-essential libssl-dev"
sudo apt-get install -y build-essential libssl-dev
