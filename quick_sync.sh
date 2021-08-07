#!/bin/bash

clear
echo '*************************************'
echo '* Quick Sync                        *'
echo '*************************************'
echo
echo "[•] Check for Updates"
echo "[ ] Install Updates"
echo "[ ] Update Rust"
echo "[ ] Launch Dropbox"
echo
echo "- - -"

sudo apt update

clear
echo '*************************************'
echo '* Quick Sync                        *'
echo '*************************************'
echo
echo "[×] Check for Updates"
echo "[•] Install Updates"
echo "[ ] Update Rust"
echo "[ ] Launch Dropbox"
echo
echo "- - -"

sudo apt upgrade

clear
echo '*************************************'
echo '* Quick Sync                        *'
echo '*************************************'
echo
echo "[×] Check for Updates"
echo "[×] Install Updates"
echo "[•] Update Rust"
echo "[ ] Launch Dropbox"
echo
echo "- - -"

rustup update

clear
echo '*************************************'
echo '* Quick Sync                        *'
echo '*************************************'
echo
echo "[×] Check for Updates"
echo "[×] Install Updates"
echo "[×] Update Rust"
echo "[•] Launch Dropbox"
echo
echo "- - -"

dropbox start

clear
echo '*************************************'
echo '* Quick Sync                        *'
echo '*************************************'
echo
echo "[×] Check for Updates"
echo "[×] Install Updates"
echo "[×] Update Rust"
echo "[×] Launch Dropbox"
echo
echo "- - -"
