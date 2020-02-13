#!/bin/bash

#update system
sudo apt update

#go
sudo add-apt-repository ppa:longsleep/golang-backports -y
sudo apt-get update
sudo apt-get install golang-go -y

#nodejs
sudo snap install node --channel=13/stable --classic


#prettier
sudo yarn global add prettier

#docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce -y
sudo usermod -aG docker ${USER}
su - ${USER}

