![Logo of the project](http://vps56132.vps.ovh.ca/logo.gitHub.png)

# How to install / configure gimp
> Part of [emeraldinspirations](https://github.com/emeraldinspirations)'s - [install](https://github.com/emeraldinspirations/install)
 project

## Installing / Getting started

```shell
sudo apt-get install gimp
```

## Add Layer to selection Plugin

Adds a new menu item `Select` → `Layer to selection` which creates a selection that exactly matches the boundaries of the current layer.

### Download from [GIMP Plugin Registry](http://registry.gimp.org/node/27002)

```shell
wget -O ~/.gimp-2.8/plug-ins/ "http://registry.gimp.org/files/layer-to-selection.scm"
```
### Update

[2.2. Installing Script-Fus](https://docs.gimp.org/en/install-script-fu.html)

Select the menu option: `Filters` → `Script-Fu` → `Refresh Scripts`
