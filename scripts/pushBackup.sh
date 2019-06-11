#!/bin/bash
echo -e '\e[4mBackup working directory\e[0m'
date
echo
echo -e "\e[4mDrop old backup\e[0m"
git branch -f emeraldinspirations HEAD
echo
echo -e "\e[4mCheckout backup branch\e[0m"
git checkout emeraldinspirations
echo
echo -e "\e[4mStage changes\e[0m"
git add .
echo
echo -e "\e[4mCommit changes\e[0m"
git commit -m "Working Directory Backup"
echo
echo -e "\e[4mUpload changes\e[0m"
git push vps56132 emeraldinspirations --force
echo
echo -e "\e[4mCheckout working branch\e[0m"
git checkout -
echo
echo -e "\e[4mRe-apply changes\e[0m"
git diff HEAD emeraldinspirations | git apply
git log --oneline --decorate --all --graph
echo "Done"
