---
title: A review of the Thinkpad X13s with Ubuntu Linux
description: This review is mainly with Ubuntu 23.10 but a little on Ubuntu 24.04
updated: 2024-03-19
tags: ubuntu ubuntu-23.10 ubuntu-24.04 aarch64

comments:
  id: 111983313766307308
---

## Preface

I purchased this system from [Amazon's Renewed Store](https://www.amazon.com/dp/B0BVWKM463?psc=1&ref=ppx_yo2ov_dt_b_product_details#renewedProgramDescriptionBtfSection) and the listing for this model is also in that link if you wanted to purchase it after this review. 

### Ubuntu support (general Linux support)

![neofetch](/images/{{ page.url }}/X13s-neofetch.png)

![About System](/images/{{ page.url }}/About-System.png)

Ubuntu has a custom image for this system which is nice until it can be merged into a general ARM64 image but with this platform it seems there is special settings that you need per device. This image is based on [Ubuntu 23.10](https://cdimage.ubuntu.com/ubuntu/releases/23.10.1/release/ubuntu-23.10.1-desktop-arm64+x13s.iso) but there are Noble Numbat (24.04) daily images as well [here](https://cdimage.ubuntu.com/daily-live/current/noble-desktop-arm64+x13s.iso) which is nice to see.

My original install was done using the 23.10 image but I have upgraded to 24.04 (which is still in testing until the end of April) but both have the 6.5.0 kernel series so other then possible newer versions of Mesa, PipeWire/PulseAudio everything should be pretty much the same for testing. 

Now before you get try booting an ISO you will need to do two things in the BIOS (which you can get to with F1 at boot):

1. Enable Linux Boot (Config -> Linux -> Linux Boot (Beta))
2. Disable Secure Boot (Security -> Secure Boot -> Secure Boot)

Now you might be able to leave Secure Boot on if you use Ubuntu or another distro that supports it but I did not test that in this review. These steps are from the Debian Wiki for this model which you can find [here](https://wiki.debian.org/InstallingDebianOn/Thinkpad/X13s#BIOS_configuration). 

This is an updated table based on my testing on Ubuntu 23.10/24.04:

| Core Feature       | Status |
| ------------------ | ------ |
| Wi-Fi/Bluetooth    | Works  |
| Touchpad           | Works  |
| Fingerprint Reader | Works  |
| Speakers           | Works  |
| Headphone port     | Works-ish  |
| USB-C ports        | Works  |
| SIM Slot           | Not tested | 

NOTE: Like mentioned in the Debian Wiki page for this system I'm not sure if the special keys other then for the screen brightness and volume work. I'll need to use a SIM to test if those buttons work but I doubt they do. From the Debian Wiki page the SIM should work but it may have some hoops to go though but perhaps not on Ubuntu.

## The Elephant in the Room and it's name is something different then x86_64

One of the good things about x86_64 is since every application is packaged for it by default and aarch64 is more of an after thought other then packages in the ports.ubuntu.com repo which is different then the default us.archive.ubuntu.com that most folks are used to. Debian (and there for Ubuntu for the most part) have a fairly large repository of cross-compiled (meaning that it built for more then one architecture which is great and it means applications like Signal, LibreOffice and other software are packaged (Signal being a snap).

## The Good

These are the items that are amazing and work really well.

### BIOS/UEFI

I did enjoy seeing a Linux option in the BIOS though I think it should just be on by default and ideally not needed. The settings for swapping the Fn row from needing to press Fn+F5 to refresh a web page to just pressing F5 like I expect. I also liked the option to swap the Fn and Ctrl since I'm used to the Ctrl being on the bottom left rather then the Fn. 

### Upgradable

Now the RAM is soldered (there are 8GB/16GB/32GB options, I have the 16GB model) **BUT** the drive is actually a M.2 2242 (not 2230 like the Steam Deck and Surface line and not 2280 like most desktops) based on the [overview sheet from Lenovo](https://psref.lenovo.com/syspool/Sys/PDF/ThinkPad/ThinkPad_X13s_Gen_1/ThinkPad_X13s_Gen_1_Spec.pdf). Plus based on the [manual](https://download.lenovo.com/pccbbs/pubs/tp_13s_gen1/ug/html_en/index.html) it looks like it is just a few screws to remove the bottom panel and the drive is held in with a single M.2 screw like normal M.2 drives! 

### GNOME Shell

The animations in GNOME Shell are really smooth and great with the touchpad! See the video below for yourself!

<video width="640" height="360" controls>
  <source src="/videos/{{ page.url}}/GNOME-Shell-animations.webm" type="video/webm">
</video>

### Screen

This is nice and large even on a 13.3" display thanks to the 16:10 resolution of 1920x1200 (instead of the average 16:9 1920x1080 that I'm used to). 

### Wi-Fi and Bluetooth

I was able to connect to two different networks without issues. While Bluetooth was testing with my Pixel Buds-A I did notice some odd "audio glitching" but it would happen randomly and the audio would keep playing during these moments but would sometimes stop for a second or two then continue playing.

![Bluetooth devices](/images/{{ page.url }}/Bluetooth-devices.png)

![Bluetooth sound](/images/{{ page.url }}/Bluetooth-sound.png)

### Ports

Getting used to only 2x USB-C ports is going to be interesting (I did give Apple a lot of shit when they did it) so I'll have an Anker adapter with an SD card (useful for Pi usage), HDMI and USB-A ports.

#### USB-C ports

Both ports are 3.2 Gen 2 and support video out though my testing though only the port closest to the hinge supports USB-PD which is expected since it has the PD logo.

### Fingerprint Reader

To my surprise the fingerprint reader works well and I can enroll my fingers! It even unlocks the system the system at the login screen too!

### Buttons

I've never had a Thinkpad before but I've heard many friends praise the keyboard, the nib and the buttons like the ones above the touchpad. I'm happy to say that they were indeed correct and it is really nice to have physical buttons in addition to the buttons under the touchpad such as the middle mouse button.

### Touchpad

It is a joy to use though it would be nicer if it was a little larger though perhaps that'll happen if they make a 14" or larger model (this is 13.3"). It is certainly larger then my last laptop that I purchased and used for years (still do as a great backup machine). I'm able to use the gestures for GNOME (for moving workspaces and going to the application view) and Firefox (for going forward and back on web pages). 

## The Bad

These are the items that don't make or break the system for most folks but are important to note their status.

### Speakers

The speakers which are really low for some reason and do not get better even at the lightest volume for some reason, perhaps driver/PipeWire/Kernel updates will help in the future but I'm not sure.

#### Headphone/Microphone port

The headphone port and even at the lower volume it has a lot of cracking in the output and it gets worse as you increase the volume. I tested two different headphones with the same result. Now using a USB headset (though the USB-C port) seems to work without issue so that is a workaround though you'll need to use an adapter to do this. I have not tested a headset with a microphone yet since I mainly use a USB-A headset so I don't use the port much.

### Video encoding and DRM

YouTube works and here are some stats for the nerds:

![Music Video at 1080@60](/images/{{ page.url}}/YouTube-Encoding-Nerd-Stats.png)

![Test Video at 4K@60](/images/{{ page.url}}/YouTube-Encoding-Nerd-Stats-2.png)

Now streaming sites that use Widevine DRM like Max and Disney+ do not work at all when you try to load a video. I tested Firefox (snap default install) and Vivaldi (they have an ARM64 Debian release). Since it's a very nice light system for traveling having local content on the system or on a Plex/Jellyfin server might be a workaround. It seems that this is also an issue with Asahi on M* series CPU's from Apple as well so not a new issue.

| Brave |
| ----- |
| ![Brave Widevine enabled](/images/{{ page.url }}/brave-widevine.png) | 

| Vivaldi |
| ------- |
| ![Vivaldi Widevine enabled](/images/{{ page.url }}/vivaldi-widevine.png) |

### Battery

Checking `upower -d` shows the battery should last 5.8 hours while Lenovo quotes 25-28 hours on Windows. I tested the system with no changes including TLP and with the 6.5 kernel from Ubuntu and I saw about that while doing the following things:

- Writing this review using helix, nano, Text Editor
- Researching how to fix the Widevine issue so basic web browsing including some YouTube here and there
- Downloading updates, installing new applications including snaps and Debian packages

Suspending does not seem to work correctly as the display is still on when the lid is closed but it does turn off if you use the menu to suspend. The battery does still seem to drain while suspended much higher then one would expect when in that state.
It may be connected to the `mem_sleep` status which we check with this command:

```bash
aaronh@drack:~$ cat /sys/power/mem_sleep 
[s2idle]
```

Note that the `deep` option is not available on this system.

## The Ugly

Here are the items that will most likely help you decide if this is a system for you.

### Webcam

For a really nice and portable system this would be an ideal candidate for remote working but since the camera does not work that might be the biggest deal breaker. I imagine support would be added in the future but it depends on how important it is to you.
This part is short as I'm not able to detect it with any software that I can find like camaeractrls, websites and such.

### Compiling

I did have it freeze on me when I was trying to build a rather large Rust project but limiting compiling options to lower the system load might help with that but I did not do that in my testing.

## Closing marks

Once Ubuntu 24.04 is released with the 6.8 kernel I believe things will get even better as it has a lot of changes, here is a small list of a few articles with information:

- https://www.phoronix.com/news/Linux-6.8-ARM-Changes
- https://www.phoronix.com/news/Qualcomm-Mainline-Linux-2024

This system is a great little portable machine with an ARM64 CPU and works great on Ubuntu. If you are looking for a system that is fanless for working on documents, web browsing, watching some YouTube videos and a little development work this is a great option! With that said if you travel and use streaming services that might be a deal breaker for you but I hope that it improves in the near future. 
