```shell
sudo lvdisplay --columns`

  LV          VG      Attr       LSize   Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  backup2     linuxvg -wi-a-----  50.00g                                                    
  grub        linuxvg -wi-a----- 500.00m                                                    
  home_shared linuxvg -wi-ao----  55.00g                                                    
  iso         linuxvg -wi-a-----  20.00g                                                    
  os          linuxvg -wi-a----- 100.00g                                                    
  swap        linuxvg -wi-ao----  16.00g                                                    
  ubuntu1610  linuxvg -wi-ao----  50.00g                                                    
```

```shell
lsblk

NAME                    MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sr0                      11:0    1  1024M  0 rom  
sda                       8:0    0 931.5G  0 disk 
├─sda4                    8:4    0  97.7G  0 part                   | ntfs shared partition
├─sda2                    8:2    0   900M  0 part                   | Winblows recovery
├─sda10                   8:10   0 395.3G  0 part                   | lvm2
│ ├─linuxvg-home_shared 253:1    0    55G  0 lvm  /mnt/home_shared  | Home directory
│ ├─linuxvg-backup2     253:6    0    50G  0 lvm                    | (Ignore)
│ ├─linuxvg-ubuntu1610  253:4    0    50G  0 lvm  /home             | To be moved -> os/ubuntu1610
│ ├─linuxvg-grub        253:2    0   500M  0 lvm                    | (Future Master GRUB)
│ ├─linuxvg-swap        253:0    0    16G  0 lvm  [SWAP]            | (Ignore)
│ ├─linuxvg-os          253:5    0   100G  0 lvm                    | All OSes
│ │ ├─ubuntu1904
│ │ ├─ubuntu1610 (future)
│ │ ├─ubuntu1510 (future)
│ │ └─...
│ └─linuxvg-iso         253:3    0    20G  0 lvm                    | All ISO files
├─sda5                    8:5    0  48.8G  0 part                   | ISO <<< burned partition
├─sda3                    8:3    0   128M  0 part                   | Winblows reserved
├─sda1                    8:1    0   100M  0 part /boot/efi         | "EFI system partition"
└─sda6                    8:6    0    15G  0 part                   | Winblows restore
```

```shell
mount

sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
udev on /dev type devtmpfs (rw,nosuid,relatime,size=8136840k,nr_inodes=2034210,mode=755)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
tmpfs on /run type tmpfs (rw,nosuid,noexec,relatime,size=1631836k,mode=755)
/dev/mapper/linuxvg-ubuntu1610 on / type btrfs (rw,relatime,space_cache,subvolid=257,subvol=/@)
securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)
tmpfs on /run/lock type tmpfs (rw,nosuid,nodev,noexec,relatime,size=5120k)
tmpfs on /sys/fs/cgroup type tmpfs (rw,mode=755)
cgroup on /sys/fs/cgroup/systemd type cgroup (rw,nosuid,nodev,noexec,relatime,xattr,release_agent=/lib/systemd/systemd-cgroups-agent,name=systemd)
pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
efivarfs on /sys/firmware/efi/efivars type efivarfs (rw,nosuid,nodev,noexec,relatime)
cgroup on /sys/fs/cgroup/cpu,cpuacct type cgroup (rw,nosuid,nodev,noexec,relatime,cpu,cpuacct)
cgroup on /sys/fs/cgroup/cpuset type cgroup (rw,nosuid,nodev,noexec,relatime,cpuset,clone_children)
cgroup on /sys/fs/cgroup/pids type cgroup (rw,nosuid,nodev,noexec,relatime,pids,release_agent=/run/cgmanager/agents/cgm-release-agent.pids)
cgroup on /sys/fs/cgroup/devices type cgroup (rw,nosuid,nodev,noexec,relatime,devices)
cgroup on /sys/fs/cgroup/freezer type cgroup (rw,nosuid,nodev,noexec,relatime,freezer)
cgroup on /sys/fs/cgroup/perf_event type cgroup (rw,nosuid,nodev,noexec,relatime,perf_event,release_agent=/run/cgmanager/agents/cgm-release-agent.perf_event)
cgroup on /sys/fs/cgroup/net_cls,net_prio type cgroup (rw,nosuid,nodev,noexec,relatime,net_cls,net_prio)
cgroup on /sys/fs/cgroup/memory type cgroup (rw,nosuid,nodev,noexec,relatime,memory)
cgroup on /sys/fs/cgroup/hugetlb type cgroup (rw,nosuid,nodev,noexec,relatime,hugetlb,release_agent=/run/cgmanager/agents/cgm-release-agent.hugetlb)
cgroup on /sys/fs/cgroup/blkio type cgroup (rw,nosuid,nodev,noexec,relatime,blkio)
systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=33,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=15867)
mqueue on /dev/mqueue type mqueue (rw,relatime)
debugfs on /sys/kernel/debug type debugfs (rw,relatime)
hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime)
fusectl on /sys/fs/fuse/connections type fusectl (rw,relatime)
tmpfs on /tmp type tmpfs (rw,nosuid,nodev,relatime)
/dev/mapper/linuxvg-ubuntu1610 on /home type btrfs (rw,relatime,space_cache,subvolid=258,subvol=/@home)
/dev/sda1 on /boot/efi type vfat (rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)
binfmt_misc on /proc/sys/fs/binfmt_misc type binfmt_misc (rw,relatime)
tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,size=1631832k,mode=700,uid=1000,gid=1000)
gvfsd-fuse on /run/user/1000/gvfs type fuse.gvfsd-fuse (rw,nosuid,nodev,relatime,user_id=1000,group_id=1000)
/dev/mapper/linuxvg-home_shared on /mnt/home_shared type btrfs (rw,relatime,space_cache,subvolid=5,subvol=/)
```
`sudo btrfs subvolume create /mnt/os/ubuntu1904`
