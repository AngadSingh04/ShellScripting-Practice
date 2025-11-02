#!/bin/bash

<<action
installing aws cli 
using shell scripting
action

installingCLI() {
    echo "installing awscli installer..."
    curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
    echo "installing awscli..."
    sudo installer -pkg AWSCLIV2.pkg -target /
}

echo "/*****Installing aws cli*****/"

if command -v aws &> /dev/null; then
    echo "AWSCLI alrady exists..."
    aws --version
    exit 1
else
    installingCLI
fi

echo "/*****Installation Done*****/"
aws --version