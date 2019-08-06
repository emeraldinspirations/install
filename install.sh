#!/bin/bash
cd ~/Install
cat README.md
echo "Enter name of application to install"
read AppName
clear
git clone -b $AppName --single-branch git@github.com:emeraldinspirations/install.git -o GitHub ~/Install/$AppName
cd ~/Install/$AppName
cat README.md
