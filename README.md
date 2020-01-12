![Logo of the project](http://vps56132.vps.ovh.ca/logo.gitHub.png)

# How to install / configure gimp
> Part of [emeraldinspirations](https://github.com/emeraldinspirations)'s - [install](https://github.com/emeraldinspirations/install)
 project

## Installing / Getting started

```shell
sudo apt-get install gimp
```

## Add `Alpha to Logo` Features Back Into Gimp 2.10
> GIMP removed the popular and beloved “Alpha to Logo” features when it rolled
> out the brand-new GIMP 2.10. But don’t fret! The GIMP team has made it easy to
> add these scripts back to your GIMP if you find yourself missing them, and I
> show you the whole process on how to get these scripts back into your GIMP.
[Add Alpha to Logo Features Back Into GIMP 2.10 | Davies Media Design](https://daviesmediadesign.com/project/add-alpha-logo-features-back-gimp-2-10/)

[https://download.gimp.org/mirror/pub/gimp/extras/](https://download.gimp.org/mirror/pub/gimp/extras/)

Download: [gimp-data-extras-2.0.4.tar.bz2](https://download.gimp.org/mirror/pub/gimp/extras/gimp-data-extras-2.0.4.tar.bz2)
SHA256 Check-Sum:
```sha256
7455e4861101e4c349a6908d6ef91f8acd83bf3dd63131c93b73c46341273f90
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
