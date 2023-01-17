---
title: Servering up Nginx on NixOS
description: Getting the server up and running
updated: 2023-01-31
tags: nixos nixos-server nixos-22.11
---

## Setting up the server

I followed this [Linode guide](https://www.linode.com/docs/guides/install-nixos-on-linode/) though this can be a bit confusing it did work for me after some trial and error! 

Now we'll want to add some of our own changes mainly for Nginx and ACME:

```
  environment.systemPackages = with pkgs; [
    acme-sh
  ];
```

### A/AAAA records

I have my records for Linode setup like this:

![Linode Domains](/images/{{ page.url }}/linode-domains.png)

## Setting up Nginx 

This part took some trial and error for me as I haven't used much of Nginx in any form. I used the following example for my website:

```
    security.acme.acceptTerms = true;
    security.acme.defaults.email = "aaronhoneycutt@proton.me";

    services.nginx = {
      enable = true;
      virtualHosts = {
        "ahoneybun.net" = {
        forceSSL = true;
        enableACME = true;
        locations."/" = {
          root = "/var/www";
        };
      };
    };
  };
```


