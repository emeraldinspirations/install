# Install VSCode

## Download `.deb` file

Download from [code.visualstudio.com](https://code.visualstudio.com/docs/?dv=linux64_deb)

## Install Application

```bash
mkdir --parents ~/Install/vscode/Downloads/; mv ~/Downloads/code_*_amd64.deb $_
sudo dpkg -i `ls -d ~/Install/vscode/Downloads/code_*_amd64.deb | sort | tail -n1`
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
