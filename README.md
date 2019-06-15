![Logo of the project](http://vps56132.vps.ovh.ca/logo.gitHub.png)

# How I set up my computer
> Application installation instructions and configuration files

1. [Step 1 - Mount shared volume](#user-content-step-1---mount-shared-volume)
2. [Step 2 - Replace shared folders with symbolic links](#user-content-step-2---replace-shared-folders-with-symbolic-links)
3. [Step 3 - Install Applications](#user-content-step-3---install-applications)

## Goal

The primary goal of this project is to be able to:
1. Install a fresh linux operating system on the same persistant storage medium
   (hard-drive) as the existing linux operating system
2. Install & configure new OS without leaving the old OS
3. Once completed, reboot computer once and (vertually) seemlessly transition 
   to using new OS

## My email setup

Whenever I install an operating system, I create a new RSA keypair with an
email address based on the following scheme:

`[Handle]+[Computer ID]+[Operating System Version]@gmail.com`

Handle
: My primary handle has been `emeraldinspirations`.  I use it on all the social 
  media / web services I use.  This provides a persistant "brand" accross
  services.

Computer ID
: This is some abbreviated form of make/model and the last 4 digits of the 
  serial number of the device.  At the time of writing, my primary machine is
  an Asus Republic of Gamers Laptop with a serial number ending in 839h
  `asusrog839h`

Operating System Version
: I primarilly use Ubuntu, and they version using a simple 4 digit YYMM 
  numbering scheme.  At the writing of this, I am installing Ubuntu version
  19.04 which I abbreviate `u1904`

Putting it all together comes up with: 
`emeraldinspirations+asusrog839h+u1904@gmail.com`

## Why I use different emails for each device / os

In a word: metadata.  If I was looking at a log, and what I was looking for I
knew I did on a specific device (ex: my cell phone), then I have an easy way to
filter out the entry I want.  Also, since I copy my dotfiles across various
versions and devices, I sometimes need to keep different versions on different
installs.  Each revison to the dotfiles is automatically tied to the relevant
device / operating system / version.  

It also helps with security.  If a device of mine is lost or stolen, even 
though the keys are locked by my password, the security of the RSA key has been
compromised.  I can easily go to each of my services and deactivate the
compromised keys.  I can also deactivate keys for devices I retire, or OSes
that I delete, without fear of blocking a working install.

## Why clean install vs upgrade

## Why BTRFS

## Why LVM

## Why "Shared" subvolume & symbolic links vs shared `/home` volume

## Why `~/Install` is local on each OS vs in `~/Shared`

## Partition / Volume / Sub-Volume Setup

# New computer

## Step (Future Notes) - How to set up BTRFS volume

# Upgrade Operating System

## Step 1 - Download new operating system

* Download file to ISO volume
* Append Hash Checksums to csv
* Verify download against checksum

## Step 2 - Create new subvolume for new operating system

## Step 3 - Create virtual machine

## Step 4 - Mount subvolume in virtual machine

## Step 5 - Boot virtual machine using ISO as startup disc

## Step 6 - Install new OS on subvolume using virtual machine

## Step 7 - Clone Install repo, run script

## Step ? - De-Dupe subvolume

## Step 8 - Update primary GRUB

## Step 9 - Reboot into new OS

# Set up User Account

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

## Step 2a - Generate RSA Key-pair

## Step 3 - Install Applications
Applications I have installed in alphabetical order.

In order to clone the files from the repo, run the following script replacing [app] with the app desired:

```shell
git clone -o gitHub -b [app] --single-branch git@github.com:emeraldinspirations/install.git ~/Install/[app]
```

- [apache2](https://github.com/emeraldinspirations/install/tree/apache2)
- ~~atom~~ *(Dropped in favor of **vim**)*
- [bash](https://github.com/emeraldinspirations/install/tree/bash)
- [bluez-tools](https://github.com/emeraldinspirations/install/tree/bluez-tools)
- clustergit
- composer
- compton
- docker
- [dropbox](https://github.com/emeraldinspirations/install/tree/dropbox)
- [dvd](https://github.com/emeraldinspirations/install/tree/dvd)
- font-awesome
- [gimp](https://github.com/emeraldinspirations/install/tree/gimp)
- [git](https://github.com/emeraldinspirations/install/tree/git)
- gksu
- google-chrome
- [grub](https://github.com/emeraldinspirations/install/tree/grub)
- [i3](https://github.com/emeraldinspirations/install/tree/i3)
- [i3blocks](https://github.com/emeraldinspirations/install/tree/i3blocks)
- [ionic](https://github.com/emeraldinspirations/install/tree/ionic)
- lamp
- [librecad](https://github.com/emeraldinspirations/install/tree/librecad)
- [nano](https://github.com/emeraldinspirations/install/tree/nano)
- [nodejs](https://github.com/emeraldinspirations/install/tree/nodejs)
- numlockx
- phpdocumentor
- phpunit
- [ranger](https://github.com/emeraldinspirations/install/tree/ranger)
- slack
- [vim](https://github.com/emeraldinspirations/install/tree/vim)
- vlc
- [zsh](https://github.com/emeraldinspirations/install/tree/zsh)

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
