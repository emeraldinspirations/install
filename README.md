# Install VSCode

## Download `.deb` file

Download from [code.visualstudio.com](https://code.visualstudio.com/docs/?dv=linux64_deb)

## Install Application

```bash

mkdir --parents ~/Install/vscode/Downloads/; mv ~/Downloads/code_*_amd64.deb $_

sudo dpkg -i ~/Install/vscode/code_1.42.0-1580986622_amd64.deb
```

## Installed Extensions
* janisdd.vscode-edit-csv
* johnpapa.vscode-peacock
* karigari.chat
* ms-vsliveshare.vsliveshare
* ms-vsliveshare.vsliveshare-audio
* ms-vsliveshare.vsliveshare-pack
* rust-lang.rust

## Configure Application
```bash
ln -s ~/Install/vscode/settings.json ~/.config/Code/User/settings.json
```
