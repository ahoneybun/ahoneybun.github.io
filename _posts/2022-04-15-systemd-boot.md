---
title: systemd-boot and efibootmgr
description: Making dual-booting easier!
updated: 2021-08-29
---

## systemd-boot

Systemd-boot started with just support for UEFI which means the code base is much smaller when compared to GRUB which has a ton of code to work with different types of drives that have been released in the last decade. Pop!_OS has been using it since the 18.04 LTS release and I have  been using it as my go to boot manager ever since. 

## efibootmgr

This command allows us to edit the EFI variables though EFISTUB, the [Arch Wiki](https://wiki.archlinux.org/title/EFISTUB#Using_UEFI_directly) has a really good selection about using `efibootmgr`. 

## Desktop files

You can make your own desktop file and for system-wide you would put them in `/usr/share/applications/` but if you want them just for your user you can use `~/.local/share/applications/`. 

```
```

```
```