#!/bin/bash

# update the VM - uncomment if running the inaugural update
# sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoclean -y && sudo apt-get autoremove -y

# update the VM - uncomment if all the build software has been installed
sudo apt-get update
sudo aptitude safe-upgrade -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y
