![Logo of the project](http://vps56132.vps.ovh.ca/logo.gitHub.png)

# How I set up my computer
> Application installation instructions and configuration files

1. [Step 1 - Mount shared volume](#user-content-step-1---mount-shared-volume)
2. [Step 2 - Replace shared folders with symbolic links](#user-content-step-2---replace-shared-folders-with-symbolic-links)
3. [Step 3 - Install Applications](#user-content-step-3---install-applications)

## Step (Future Notes) - How to set up BTRFS volume

## Step 1 - Mount shared volume
```shell
rmdir ~/Shared
ln -s /mnt/home_shared Shared
```

## Step 2 - Replace shared folders with symbolic links
```shell
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
## Step 3 - Install Applications
Applications I have installed in alphabetical order.

In order to clone the files from the repo, run the following script replacing [app] with the app desired:

```shell
git clone -o gitHub -b [app] --single-branch git@github.com:emeraldinspirations/install.git ~/Install/[app]
```

- [apache2](https://github.com/emeraldinspirations/install/tree/apache2)
- atom
- bash
- [bluez-tools](https://github.com/emeraldinspirations/install/tree/bluez-tools)
- clustergit
- composer
- compton
- docker
- [dropbox](https://github.com/emeraldinspirations/install/tree/dropbox)
- [dvd](https://github.com/emeraldinspirations/install/tree/dvd)
- font-awesome
- [gimp](https://github.com/emeraldinspirations/install/tree/gimp)
- git
- gksu
- google-chrome
- i3
- i3blocks
- [ionic](https://github.com/emeraldinspirations/install/tree/ionic)
- lamp
- [librecad](https://github.com/emeraldinspirations/install/tree/librecad)
- [nano](https://github.com/emeraldinspirations/install/tree/nano)
- [nodejs](https://github.com/emeraldinspirations/install/tree/nodejs)
- numlockx
- phpdocumentor
- phpunit
- ranger
- slack
- vlc
- zsh

# install
The applications and respective configuration files that I have on my personal machine

## Data to be imported

```shell
ln -s ~/Install/bash/.bash_aliases .bash_aliases
ln -s ~/Install/bash/.bashrc .bashrc
ln -s ~/Install/git/.gitconfig .gitconfig
ln -s ~/Install/i3/.i3status.conf .i3status.conf
ln -s ~/Install/zsh/oh-my-zsh/ .oh-my-zsh
ln -s ~/Install/zsh/.zshrc .zshrc
```

https://github.com/emeraldinspirations/install
