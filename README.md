![Logo of the project](http://vps56132.vps.ovh.ca/logo.gitHub.png)

# How to install [Drobox](https://www.dropbox.com) for Linux
> Part of emeraldinspirations's - [install](https://github.com/emeraldinspirations/install/blob/master/README.md)
 project

The local daemon that keeps the `~/Dropbox` folder synced with the [Drobox](https://www.dropbox.com) service.

## Installing / Getting started

```shell
mkdir -p ~/Install/dropbox/bin
wget -O ~/Install/dropbox/bin/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py"
chmod +x ~/Install/dropbox/dropbox.py
ln -s ~/Install/dropbox/bin/dropbox.py dropboxcli
sudo ln -s /home/emeraldinspirations/Install/dropbox/bin/dropbox.py /usr/bin/dropboxcli
```
