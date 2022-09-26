---
title: Installing Armian 22.08
description: How to get a booting system if installed on the eMMC
updated: 2022-09-26
tags: pbp armbian
---

## Installing to microSD card

1. Download the image file from [here](https://www.armbian.com/pinebook-pro/).
2. You can use the Disks application if you are on GNOME or similar desktops similar to the steps in this System76 [article](https://support.system76.com/articles/live-disk#making-the-bootable-drive).

## Booting from microSD card

1. Download the image file again to the microSD card while booted from it.
2. Now write the image to the eMMC using this command:

```
xzcat Armbian_22.08.1_Pinebook-pro_jammy_current_5.15.63.img.xz | sudo dd of=/dev/sdb bs=4M status=progress
```

## Mount the eMMC install

1. Run this command:

```
sudo mount /dev/mmcblk2p1/
```

From there download this replacement file using this command:

```
wget http://http.kali.org/dists/kali-dev/main/installer-arm64/current/images/device-tree/rockchip/rk3399-pinebook-pro.dtb
```

Then replace it:

```
sudo mv rk3399-pinebook-pro.dtb /mnt/boot/dtb/
```

Now shutdown to remove the microSD card and reboot into the eMMC:

```
sudo shutdown now
```

Credits: [https://forum.pine64.org/showthread.php?tid=17215](https://forum.pine64.org/showthread.php?tid=17215)
