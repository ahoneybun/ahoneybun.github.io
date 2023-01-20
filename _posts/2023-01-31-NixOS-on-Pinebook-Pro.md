---
title: Installing NixOS on the Pinebook Pro
description: Getting the server up and running
updated: 2023-01-31
tags: nixos nixos-22.11
---

## Creating the install media

We can use the ARM ISO files on [NixOS.org](https://nixos.org/download.html) and if you want a GUI to connect to your network use either the Plasma or GNOME versions. You can also use the Minimal version and you can use the CLI to connect to your network.



## Booting from the install media

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

<3>CTRL-EVENT-CONNECTED - Connection to 32:85:ab:ef:24:5c completed [id=0 id_str=]
you can now leave wpa_cli by typing quit.

[Source](https://nixos.org/manual/nixos/stable/index.html#sec-installation-booting-networking)


