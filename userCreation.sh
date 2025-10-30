#!/bin/bash

echo "Today we will create a user"
read -p "Enter username: " username
read -p "Enter full name: " fullname

sudo useradd -m $username

echo "User added successfully" 