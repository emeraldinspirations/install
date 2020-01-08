# Install slack

## Download `.deb` file

Download from [slack.com](https://slack.com/downloads/instructions/ubuntu)

## Install Dependancies

Version 4.2.0 returned the error:

```
dpkg: dependency problems prevent configuration of slack-desktop:
 slack-desktop depends on gconf2; however:
  Package gconf2 is not installed.
 slack-desktop depends on gconf-service; however:
  Package gconf-service is not installed.
 slack-desktop depends on libappindicator1; however:
  Package libappindicator1 is not installed.
```

To fix:

```bash
sudo apt-get install gconf2 gconf-service libappindicator1
```

## Install Application

```bash

mkdir --parents ~/Install/slack/Downloads/; mv ~/Downloads/slack-desktop-*-amd64.deb $_

sudo dpkg -i ~/Install/slack/slack-desktop-2.0.3-amd64.deb
```
