#!/bin/bash

<< action
we will clone a repo
and deploy the app
action

gitClone() {
    echo "Cloning the repo..."
    git clone https://github.com/LondheShubham153/django-notes-app.git
}

installRequirements() {
    echo "installing requirements..."
    brew install docker
    brew install docker-compose
    brew install nginx
}

doingRestarts() {
    sudo chown $USER /var/run/docker.sock
}

doingDeploy() {
    docker build -t notes-app .
    docker-compose up -d
}

echo "/******Deployement Started*******/"
if ! gitClone; then
    echo "directory already exists..."
    cd django-notes-app
if ! installRequirements; then
    echo "Installation failed..."
    exit 1
if ! doingRestarts; then
    echo "Restart issues..."
    exit 1
if ! doingDeploy; then
    echo "Deployement problem..."
    echo "Contact the admin..."
    exit 1
echo "/******Deployement Ended*******/"

