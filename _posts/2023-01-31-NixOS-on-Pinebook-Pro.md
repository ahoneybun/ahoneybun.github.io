---
title: Installing NixOS on the Pinebook Pro
description: Getting the server up and running
updated: 2023-01-31
tags: nixos nixos-22.11
---

## Creating the install media

We can use the ARM ISO files on [NixOS.org](https://nixos.org/download.html) and if you want a GUI to connect to your network use either the Plasma or GNOME versions. You can also use the Minimal version and you can use the CLI to connect to your network.

## Booting from the install media

The next step assumes that you have Tow-Boot installed and if you don't please review the following steps in their [documentation](https://tow-boot.org/getting-started.html) to install it. With the install media connected to the Pinebook Pro, boot it up and wait for the prompt at the bottom left of the screen to press the ESC key for the Boot Menu then select the USB option to boot from.

Once we are in connect to your network using the GUI if you used GNOME/Plasma and if you used the Minimal version use the command below (the command that start with > are from using wpa_cli):

```
sudo systemctl start wpa_supplicant
wpa_cli
> add_network
> set_network 0 ssid "myhomenetwork"
> set_network 0 psk "mypassword"
> set_network 0 key_mgmt WPA-PSK
> enable_network 0
```

When successfully connected, you should see a line such as this one

```
<3>CTRL-EVENT-CONNECTED - Connection to 32:85:ab:ef:24:5c completed [id=0 id_str=]
```

you can now leave wpa_cli by typing quit.

[Source](https://nixos.org/manual/nixos/stable/index.html#sec-installation-booting-networking)

We can test the connection with this command:

```
ping -c 3 google.com
```

