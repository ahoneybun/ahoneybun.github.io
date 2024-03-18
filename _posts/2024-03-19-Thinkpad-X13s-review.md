---
title: Review with Linux
description: This review is mainly with Ubuntu 23.10
updated: 2024-03-19
tags: 

comments:
  id: 111983313766307308
---

## Preface

I purchased this system from [Amazon's Renewed Store](https://www.amazon.com/dp/B0BVWKM463?psc=1&ref=ppx_yo2ov_dt_b_product_details#renewedProgramDescriptionBtfSection) and the listing for this model is also in that link if you wanted to purchase it after this review. 

### Ubuntu support (general Linux support)

Ubuntu has a custom image for this system which is nice until it can be merged into a general ARM64 image but with this platform it seems there is special settings that you need per device. This image is based on [Ubuntu 23.10](https://cdimage.ubuntu.com/ubuntu/releases/23.10.1/release/ubuntu-23.10.1-desktop-arm64+x13s.iso) but there are Noble Numbat daily images as well [here](https://cdimage.ubuntu.com/daily-live/current/noble-desktop-arm64+x13s.iso) which is nice to see.

Now before you get try booting an ISO you will need to do two things in the BIOS (which you can get to with F1 at boot):

1. Enable Linux Boot (Config -> Linux -> Linux Boot (Beta))
2. Disable Secure Boot (Security -> Secure Boot -> Secure Boot)

Now you might be able to leave Secure Boot on if you use Ubuntu or another distro that supports it but I did not test that in this review. These steps are from the Debian Wiki for this model which you can find [here](https://wiki.debian.org/InstallingDebianOn/Thinkpad/X13s#BIOS_configuration). 

This is an updated table based on my testing on Ubuntu 23.10:

| Core Feature | Status |
| ------------ | ------ |
| Wi-Fi/Bluetooth | Wi-Fi works fine |
| Touchpad | Works great |
| Sound | The speakers are really quiet but not sure if it is better on Windows either |
| Headphone port | Works |
| USB-C ports (including PD port) | Works as expected |
| SIM Slot | Not tested | 


### Touchpad

It is a joy to use though it would be nicer if it was a little larger though perhaps that'll happen if they make a 14" or larger model (this is 13.3"). It is certainly larger then my last laptop that I purchased and used for years (still do as a great backup machine).

### Camara

This part is short as I'm not able to detect it with any software that I can find like camaeractrls, websites and such.
