---
title: Hosting on NixOS
description: Running NixOS on Linode VPS for services like Jekyll and Mastodon
updated: 2023-03-31
tags: nixos nixos-22.11 nixos-server
---

## Installing on Linode

I've been using Linode for a while and I used these [steps](https://www.linode.com/docs/guides/install-nixos-on-linode/).

### Mastodon

One issue with my configuration is that I don't have SMTP working so confirmation emails are not sent out. To workaround this I can confirm the account using `tootctl` on the server itself like this:

```bash
# Switch to root
sudo su

# Switch to mastodon account
su - mastodon -s $(which bash)

## Approve accounts though tootctl
mastodon-env tootctl accounts approve PUT-YOUR-USERNAME-HERE

## Accept email address though tootctl 
mastodon-env tootctl accounts modify PUT-YOUR-USERNAME-HERE --confirm
```

Source: https://page.romeov.me/posts/setting-up-mastodon-with-nixos/#adding-your-user

### Jekyll

Getting Jekyll to build with my [site](https://github.com/ahoneybun/ahoneybun.net) took a while but these commands was able to build with my plugins:

```bash
cd ahoneybun.net
nix-shell -p jekyll rubyPackages.webrick rubyPackages.jekyll-feed rubyPackages.jekyll-redirect-from
jekyll build
```
