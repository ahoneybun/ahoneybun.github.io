---
title: Mobile NixOS
description: Running NixOS on mobile devices like the PinePhone
updated: 2022-12-30
tags: nixos 23.05
---

# Mobile NixOS

## Installing Tow-Boot

Tow-Boot instead of U-Boot (you can read the differences [here](https://github.com/Tow-Boot/Tow-Boot/blob/released/doc/differences-from-u-boot.md)) so we'll need to make sure we install it on the eMMC on the PinePhone by using the release file from their [Github here](https://github.com/Tow-Boot/Tow-Boot/releases). For the default PinePhone (non-Pro) we would use pine64-pinephoneA64-2021.10-005.tar.xz from there then extract the archive there are steps for flashing the device [here](https://tow-boot.org/devices/pine64-pinephoneA64.html). 

## Creating a bootable microSD card

There are handy installer images of [Mobile NixOS for some devices like the PinePhone](https://mobile.nixos.org/devices/pine64-pinephone.html) which we can download from [here](https://hydra.nixos.org/job/mobile-nixos/unstable/installer.pine64-pinephone) we'll use this page to install the image to the microSD that we'll then use to install to the phone's eMMC. 

## Booting from microSD card

To boot from a microSD card when using Tow-Boot is different then the default firmware on the eMMC where we will need to hold the Volume button down instead of just installing it then booting. At his point we'll be taken to the installer for Mobile NixOS which we'll do the following:

1. Connect to a Wi-Fi network
2. Choice to use FDE (Full Disk Encryption)
3. Choice which interface to use (GNOME Phosh or Plasma Mobile)
4. Wait for a while!

### Booting from Mobile NixOS 

![Phosh Settings](/images/{{ page.url }}/phosh-settings.png)

![Phose Overview](/images/{{ page.url }}/phosh-settings.png)
