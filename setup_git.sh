#!/bin/bash

#This is a script to set up a remote ssh for git

sudo nala update && sudo nala upgrade -y

#If git is not installed
sudo add-apt-repository ppa:git-core/ppa
sudo nala update
sudo nala install git


#Verfiying git version
git --version

#Hardcode for now will take user input later
git config --global user.name "Victor Wilberforce"
git config --global user.email "victorwilberforce2310@gmail.com"

#Make sure default is main
git config --global init.defaultBranch main

#Setting up color in git
git config --global color.ui auto

#Verify user information
git config --get user.name
git config --get user.email

#Generating a key
ssh-keygen -t ed25519 -C victorwilberforce2310@gmail.com

#Verfiying key
ssh -T git@github.com
