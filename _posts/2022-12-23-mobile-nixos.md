---
title: Mobile NixOS
description: Running NixOS on mobile devices like the PinePhone
updated: 2022-12-23
tags: nixos 23.05
---

## Installing Tow-Boot

Tow-Boot instead of U-Boot (you can read the differences [here](https://github.com/Tow-Boot/Tow-Boot/blob/released/doc/differences-from-u-boot.md)) so we'll need to make sure we install it on the eMMC on the PinePhone by using the release file from their [Github here](https://github.com/Tow-Boot/Tow-Boot/releases). For the default PinePhone (non-Pro) we would use pine64-pinephoneA64-2021.10-005.tar.xz from there then extract the achive.
