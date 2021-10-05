#!/bin/bash
# There aren't any checks written into this file yet - it will be refined over time.
# It is currently a very ham-fisted way to get everything in place as quickly as possible.

# Get the VSCode repos into the list of software sources
# 04-10-2021: https://code.visualstudio.com/docs/setup/linux
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

# Install the packages for node development
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install aptitude firefox localepurge nodejs npm git gitsome code

# Update NodeJS
npm cache clean -f
sudo npm install -g n
sudo n stable
