## Linux kernel

| Commands | What it does |
|:--------:|:------------:|
| sudo update-initramfs -c -k *kernelversion* | Generate a new initramfs image with version |
| sudo kernelstub -a "maxcpus=2" | Support disabling cores in the BIOS |
| sudo kernelstub -a "nvme_core.default_ps_max_latency_us=####" | [Change NVMe wake-up times](https://wiki.archlinux.org/title/Solid_state_drive/NVMe#Power_Saving_(APST)) |
| sudo kernelstub -a "intel_idle.max_cstate=4" | [Change Intel C-State Level](https://www.kernel.org/doc/html/latest/admin-guide/pm/intel_idle.html) | 

## Xorg (X11)

| Commands | What it does |
|:--------:|:------------:|
| xset -dpms | [Disable Monitor power saving](https://wiki.archlinux.org/title/Display_Power_Management_Signaling) |

## systemd

| Commands | What it does |
|:--------:|:------------:|
| systemctl --failed | List failed systemd units |
| systemctl --failes --all | List all failed services in systemd |
| systemctl --user -t target | See what systemd targets are running |
| systemctl --user list-dependencies default.target | See if the default target wants a user service |
| systemctl enable multi-user.target --force | Make multi-user target available in a normally graphical OS |
| systemctl get-default | Get current runlevel |
| systemctl isolate graphical.target | Switch to gui mode, runlevel 5 |
| systemctl isolate multi-user.target | Switch to server mode (runlevel 3), no gui | 
| bluetooth.service | Show dependencies	systemctl list-dependencies |
| systemctl list-timers -a | List all timers |
| systemctl list-unit-files | Shows all services, sockets, timers, and sockets |
| systemctl list-unit-files --type=service |  List systemd service files |
| systemctl list-units | Show running units |
| systemctl list-units --type=service --state=active | systemd services currently active |
| systemctl list-units --type=service --state=running | systemd services currently active and running |
| systemctl set-default graphical.target | Change the default systemd startup mode to a gui |
| systemctl set-default multi-user.target | Change the default systemd startup mode to a terminal only |
| systemctl suspend | Suspend computer |
| systemctl hibernate | Hibernate computer |
| systemctl reboot --boot-loader-entry=Pop_OS-oldkern.conf | Boots to the oldkern, can be changed to match another entry like Windows or Recovery |
| systemctl reboot --boot-loader-entry=help | List all boot entries for systemd-boot |
| systemctl reboot --firmware-setup | Restarts the system into BIOS |
| systemctl restart name.service | Restart a service like bluetooth.service or apache2.service |
| systemctl status name.service | See what is going on with a service |
| systemctl status --no-pager | Show tree of processes |
| systemd-analyze plot > boot_analysis.svg | Create a graphic of the boot time and process |
| systemd-resolve –status | List network info like DNS Servers |

### systemd v251+ (in Ubuntu 22.10+)

| Commands | What it does |
|:--------:|:------------:|
| bootctl set-timeout TIMEOUT | Sets the boot loader menu timeout in seconds |
| bootctl set-timeout-oneshot TIMEOUT | Set the boot loader menu timeout only for the next boot |

### systemd v249 (Pop!_OS 22.04/Ubuntu 22.04)

| Commands | What it does |
|:--------:|:------------:|
| bootctl set-default ID | Sets the new boot device/target |
| bootctl set-oneshot ID | Sets the new boot device/target for only the next boot |

## efibootmgr

| Commands | What it does |
|:--------:|:------------:|
| efibootmgr | List boot entries |
| sudo efibootmgr -n #### | Sets that boot entry for the next boot only |
| sudo efibootmgr -N #### | Deletes the boot next |
| sudo efibootmgr --timeout=5 | Add a 5 second timeout to boot |
| sudo efibootmgr -b #### -B | Remove boot entry matching the #### |

## GRUB

| Commands | What it does |
|:--------:|:------------:|
| sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT="/&option /' /etc/default/grub | adds kernel option to GRUB file |

> *NOTE:* you will need to run this command when making changes to GRUB's file before rebooting:

```bash
sudo update-grub
```

## fwupd

| Commands | What it does |
|:--------:|:------------:|
| fwupdmgr get-devices | List devices supported by fwupd |
| fwupdmgr get-updates | Perform updates to devices supported by fwupd |


https://wiki.archlinux.org/title/fwupd

## Ubuntu/Pop

### apt/dpkg

| Commands | What it does | 
|:--------:|:------------:|
| apt policy packagename | Package information |
| apt-cache madison packagename | List available versions for a package |
| sudo apt install packagename –dry-run | See what packages will be installed with the package |
| apt policy packagename | Find version installed and available |
| sudo dpkg --remove --force-remove-reinstreq package_name | Remove broken package |
| sudo apt-mark hold packagename | Hold a package to the current version |
| dpkg --list | grep linux-image | List all installed kernels |
| apt list --installed | grep packagename | Searches that package if it was installed using apt | 

## sed

| Commands | What it does |
| sudo sed -i "s#/dev/sda#$driveName#g" /tmp/disko-config.nix | Replaces a default value with the result of a variable |

## Arch

### pacman

| Commands | What it does | 
|:--------:|:------------:|
| pacman -Syu | updates repos then upgrades packages |

| Commands | What it does | 
|:--------:|:------------:|
| pkgfile filename | files what package provides that file |

## [flatpak](https://docs.flatpak.org/en/latest/using-flatpak.html)

| Commands | What it does |
|:--------:|:------------:|
| flatpak update | Update flatpak packages |
| flatpak list | Show the installed flatpak packages |
| flatpak search | Search flatpak packages from sources |
| flatpak remotes | List Flatpak remotes (other servers) |

## Plasma

| Commands | What it does |
|:--------:|:------------:|
| kioclient exec path/to/desktop/file | Runs the .desktop file |

## GNOME

### GSettings

| Commands | What it does |
|:--------:|:------------:|
| gsettings set com.system76.hidpi enable false | Turn off HiDPI daemon |
| gsettings set org.gnome.desktop.interface scaling-factor 2 | Change scaling for the UI |
| gsettings set com.ubuntu.user-interface.desktop cursor-size 48 | Enlarge cursor |
| gsettings set org.gnome.desktop.background picture-uri 'file://PathToImage' | Change wallpaper |
| gsettings set org.gnome.desktop.wm.preferences button-layout "appmenu:minimize,maximize,close" | Enable Minimize and Maximize buttons |
