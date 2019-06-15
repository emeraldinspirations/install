# mountShared.sh
> [`~/Install/i3/script/mountShared.sh`](./mountShared.sh)  
> A script to mount my "Shared" partition

My files are stored in a "shared" volume across operating systems.  Since I want
to be able to simultaneously boot multiple operating systems, and (unless one is
a hypervisor) they can't all mount the same volume at the same time, I don't by
default mount the "shared" volume.

This script mounts the "shared" volume and pops up a notification with the
results of the mount operation.

## Obstacles
I ran into 2 obstacles while writing this script:
1. The notification system `notify-send` wasn't fully installed
2. The GUI sudo prompt `gksu` has been deprecated in Ubuntu 19.04

## Fix 1 - Notification Fix
> Reference: https://askubuntu.com/a/53644

```shell
sudo apt-get --reinstall install libnotify-bin notify-osd
```

Note: You might need to restart after reinstalling.  When I first ran this the
problem fixed immediately.  While working on the second problem I did several
install / uninstalls and it broke the fix.  Later I re-ran this fix, but I had
to restart before it worked.


## Fix 2 - GUI sudo prompt
> Reference: https://askubuntu.com/a/799419

Ubuntu 19.04 deprecated `gksu`.  All the articles about this said to use
`pkexec` instead.  In i3, this results in the following prompt:

```
==== AUTHENTICATING FOR org.freedesktop.policykit.exec ===
Authentication is needed to run `/usr/bin/mount' as the super user
Authenticating as: <user>
Password:
```

The fix was to run the `polkit-gnome-authentication-agent-1` in the
background.  So I added it to my `~/.i3/config` file in my "startup" items.

## Future Goals
* Change script to toggle the mount
* Have the script update my `i3bar` equivalent

