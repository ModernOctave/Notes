# Hibernate


## Create Swap
Create appropriate swap using [this script](Scripts/change-swap-size.sh). Refer to [this page](https://itsfoss.com/swap-size/) to choose an appropriate size.

## Set Kernel Parameters
[Arch Wiki](https://wiki.archlinux.org/title/Power_management/Suspend_and_hibernate#Hibernation)

Find the `swap_device` using the command `findmnt -no UUID -T /swapfile`.

Find the `swap_file_offset` using the command `filefrag -v /swapfile | awk '$1=="0:" {print substr($4, 1, length($4)-2)}'`

Add the following params to `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub` with the respective values found in the previous step,
```
resume=UUID=swap_device resume_offset=swap_file_offset
```

## Update initramfs

### Arch Based Distibutions
Follow the steps given on the [Arch Wiki](https://wiki.archlinux.org/title/Power_management/Suspend_and_hibernate#Configure_the_initramfs). Then regenerate them using `mkinitcpio -P`.

## Add GNOME action (optional)
Install [this](https://codeberg.org/kiyui/gnome-shell-hibernate-extension) extension to add a GNOME action for hibernation.

## Change Power Management
Update the power management as required.

### Replace suspend with suspend-then-hibernate
[Manjaro Forum](https://archived.forum.manjaro.org/t/configuring-suspend-then-hibernate/90324)
[Arch Forum](https://archlinux.org.ru/forum/topic/18865/)
[systemmd docs](https://www.freedesktop.org/software/systemd/man/systemd.unit.html)
```
sudo mkdir /etc/systemd/system/systemd-suspend.service.d/
```
Copy [this file](Files/override.conf) to this folder.

Ensure these lines in `/etc/systemd/sleep.conf`,
```
[Sleep]
AllowSuspendThenHibernate=yes
HibernateDelaySec=1min
```
Set the HibernateDelaySec to the required delay. Only a number will be considered seconds, a suffix of `min` can be given to set unit as minutes

### Finer sleep timeout settings (GNOME)
Go to `org.gnome.settings-daemon.plugins.power` in dconf editor and set the timeouts as required.