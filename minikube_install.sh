#!/usr/bin/env bash

# Author: Maxat Akbanov
# Description: Shell script to install minikube and kubectl on Ubuntu system
# Usage: 
# 1. ./minikube_install.sh 
# 2. sudo bash minikube_install.sh

SYSTEM=$(awk -F= '/^NAME/{print $2}' /etc/os-release)

if [ $SYSTEM = '"Ubuntu"' ]; then
    # -------------------------------------------
    echo "Updating and upgrading system packages ..."
    sudo apt update -y
    sudo apt install apt-transport-https -y
    sudo apt upgrade -y
    # -------------------------------------------
    echo "Installing VirtualBox Hypervisor ..."
    sudo apt install virtualbox virtualbox-ext-pack
    # -------------------------------------------
    echo "Dowloading and installing minikube ..."
    wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    chmod +x minikube-linux-amd64
    sudo mv minikube-linux-amd64 /usr/local/bin/minikube
    # -------------------------------------------
    echo "Installing kubectl ..."
    curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
    chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl
else
    echo "This is not Ubuntu"
    exit 1
fi

echo "Checking installations ..."
if command -v minikube &> /dev/null && command -v kubectl &> /dev/null; then
    echo "Minikube and Kubectl are installed successfully"
    exit 0
else
    echo "Packages are not installed"
    exit 1
fi