---
title: Review with Linux
description: This review is mainly with Ubuntu 23.10
updated: 2024-03-19
tags: ubuntu ubuntu-23.10 ubuntu-24.04 

comments:
  id: 111983313766307308
---

## Preface

I purchased this system from [Amazon's Renewed Store](https://www.amazon.com/dp/B0BVWKM463?psc=1&ref=ppx_yo2ov_dt_b_product_details#renewedProgramDescriptionBtfSection) and the listing for this model is also in that link if you wanted to purchase it after this review. 

### Ubuntu support (general Linux support)

Ubuntu has a custom image for this system which is nice until it can be merged into a general ARM64 image but with this platform it seems there is special settings that you need per device. This image is based on [Ubuntu 23.10](https://cdimage.ubuntu.com/ubuntu/releases/23.10.1/release/ubuntu-23.10.1-desktop-arm64+x13s.iso) but there are Noble Numbat (24.04) daily images as well [here](https://cdimage.ubuntu.com/daily-live/current/noble-desktop-arm64+x13s.iso) which is nice to see.

Now before you get try booting an ISO you will need to do two things in the BIOS (which you can get to with F1 at boot):

1. Enable Linux Boot (Config -> Linux -> Linux Boot (Beta))
2. Disable Secure Boot (Security -> Secure Boot -> Secure Boot)

Now you might be able to leave Secure Boot on if you use Ubuntu or another distro that supports it but I did not test that in this review. These steps are from the Debian Wiki for this model which you can find [here](https://wiki.debian.org/InstallingDebianOn/Thinkpad/X13s#BIOS_configuration). 

This is an updated table based on my testing on Ubuntu 23.10/24.04:

| Core Feature | Status |
| ------------ | ------ |
| Wi-Fi/Bluetooth | Both work great |
| Touchpad | Works great |
| Fingerprint Reader | Works well |
| Speakers | The speakers are really quiet but not sure if it is better on Windows either |
| Headphone port | Works but has issues |
| USB-C ports (including PD port) | Works as expected |
| SIM Slot | Not tested | 

NOTE: Like mentioned in the Debian Wiki page for this system I'm not sure if the special keys other then for the screen brightness and volume work. I'll need to use a SIM to test if those buttons work but I doubt they do.

## The Good

### Screen

This is nice and large even on a 13.3" display thanks to the 16:10 resolution of 1920x1200 (instead of the average 16:9 1920x1080 that I'm used to). Video encoding seems to work with YouTube. 

### Wi-Fi and Bluetooth

I was able to connect to two different networks without issues and Bluetooth worked without issue with my Pixel Buds-A.

### Speakers and Headphones

First up is the speakers which are really low for some reason and do not get better even at the lightest volume for some reason, perhaps driver/PipeWire updates will help in the future but I'm not sure.

Next is the headphone port and even at the lower volume it has a lot of cracking in the output and it gets worse as you increase the volume. I tested two different headphones with the same result.

Now using a USB headset (though the USB-C port) seems to work without issue so that is a workaround though you'll need to use an adapter to do this.

### Fingerprint Reader

To my suprise the fingerprint reader works well and I can enroll my fingers! It even unlocks the system the system at the login screen too!

### Touchpad

It is a joy to use though it would be nicer if it was a little larger though perhaps that'll happen if they make a 14" or larger model (this is 13.3"). It is certainly larger then my last laptop that I purchased and used for years (still do as a great backup machine).

## The Bad

### Streaming Websites

While YouTube works without issue the same can't be said about Max and Disney+. They do not work with Firefox (snap default install) or Vivaldi (they have an ARM64 image or I would have tested Chrome itself). 

## The Ugly

Since this is a wonderful portable system not having the webcam working might be a deal-breaker for remote folks and such so it's under here.

### Camara

This part is short as I'm not able to detect it with any software that I can find like camaeractrls, websites and such.
