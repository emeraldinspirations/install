![Logo of the project](http://vps56132.vps.ovh.ca/logo.gitHub.png)

# How to install bluez-tools
> Part of emeraldinspirations's - [install](https://github.com/emeraldinspirations/install/blob/master/README.md)
 project

The ability to use bluetooth through command line

## Installing / Getting started

```shell
sudo apt-get install bluez-tools
```

## Command summary - LG HBS730 headphones (00:18:6B:57:0A:76)
| Action                 | Command                         |
|:---------------------- |:------------------------------- |
| List available devices | `bt-device -l`                  |
| Connect                | `bt-audio -c 00:18:6B:57:0A:76` |
| Disconnect             | `bt-audio -d 00:18:6B:57:0A:76` |
