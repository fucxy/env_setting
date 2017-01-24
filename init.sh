#!/bin/bash
USERNAME ="Fucxy"
USEREMAIL="innocencei.m@gmail.com"
echo "Apt-get prompt "
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y gcc vim git openssh-client
rm .sudo_as_admin_successful
echo "Git setting"
git config --global user.name $USERNAME
git config --global user.email $USEREMAIL
git config --global core.editor vim
git config --global color.diff auto 
git config --global color.status auto 
git config --global color.branch auto
git config --global color.log auto
echo "Let"
ssh-keygen -t rsa -b 4096 -C $USEREMAIL
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo "You can add your public key to Github as follow:"
cat ~/.ssh/id_rsa.pub 
echo "Bash Setting"


