# install
The applications and respective configuration files that I have on my personal machine

In order to clone the files from the repo, run the following script replacing [app] with the app desired:

```shell
git clone -o gitHub -b [app] --single-branch git@github.com:emeraldinspirations/install.git ~/Install/[app]
```

Here are the apps I have installed listed alphabetically.
- bash
- [bluez-tools](https://github.com/emeraldinspirations/install/blob/bluez-tools/README.md)
- composer
- [dropbox](https://github.com/emeraldinspirations/install/blob/dropbox/README.md)
- [dvd](https://github.com/emeraldinspirations/install/blob/dvd/README.md)
- font-awesome
- git
- google-chrome
- i3
- [ionic](https://github.com/emeraldinspirations/install/blob/ionic/README.md)
- lamp
- nano
- netbeans
- [nodejs](https://github.com/emeraldinspirations/install/blob/nodejs/README.md)
- phpunit
- ranger
- slack
- vlc
- zsh

# Remove folders added by os installer, symbolically link to shared volume
```shell
rmdir ~/Shared
ln -s /mnt/home_shared Shared

ln -s ~/Shared/emeraldinspirations/Backups/ Backups

ln -s ~/Shared/emeraldinspirations/Clients/ Clients

rmdir ~/Documents
ln -s ~/Shared/emeraldinspirations/Documents/ Documents

ln -s ~/Shared/emeraldinspirations/help/ help

ln -s ~/Shared/emeraldinspirations/Images/ Images

rmdir ~/Music
ln -s ~/Shared/emeraldinspirations/Music/ Music

rmdir ~/Pictures
ln -s ~/Shared/emeraldinspirations/Pictures/ Pictures

ln -s ~/Shared/emeraldinspirations/Projects Projects

rmdir ~/Public
ln -s ~/Shared/emeraldinspirations/Public/ Public

ln -s ~/Shared/emeraldinspirations/script/ script

rmdir ~/Templates
ln -s ~/Shared/emeraldinspirations/Templates/ Templates

ln -s ~/Shared/emeraldinspirations/Tools/ Tools

rmdir ~/Videos
ln -s ~/Shared/emeraldinspirations/Videos/ Videos

ln -s ~/Shared/emeraldinspirations/VirtualBox\ VMs/ VirtualBox\ VMs
```

```shell
ln -s ~/Install/bash/.bash_aliases .bash_aliases
ln -s ~/Install/bash/.bashrc .bashrc
ln -s ~/Install/git/.gitconfig .gitconfig
ln -s ~/Install/i3/.i3status.conf .i3status.conf
ln -s ~/Install/nano/.nanorc .nanorc
ln -s ~/Install/zsh/oh-my-zsh/ .oh-my-zsh
ln -s ~/Install/zsh/.zshrc .zshrc
```
