# Install Application
```bash
sudo add-apt-repository ppa:freecad-maintainers/freecad-stable
sudo apt-get update
sudo apt-get install freecad freecad-common && sudo apt-get upgrade
```
## Failed Steps

### Step 1

`sudo apt-get install freecad`

```
Package freecad is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

E: Package 'freecad' has no installation candidate
```

### Step 2

`sudo apt-get install freecad freecad-doc && sudo apt-get upgrade`

```
Package freecad-doc is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source
However the following packages replace it:
  freecad-common

E: Package 'freecad-doc' has no installation candidate
```

Source: <https://www.freecadweb.org/wiki/Install_on_Unix> (Outdated)
