---
title: Packaging up COSMIC in NixOS
description: The work so far to get COSMIC on NixOS
updated: 2024-02-23
tags: nixos nixos-unstable nixos-23.11 nixos-24.05

comments:
  id: 110669673878756587
---

## From the beginning

Let's first start what COSMIC is and it's history, we'll look at the first blog post from System76 (the company behind COSMIC) [here](https://blog.system76.com/post/november-at-system76-products-promos--cosmic-de). Now for their latest update to date progress on COSMIC we'll look at their blog post [here](https://blog.system76.com/post/cosmic-the-road-to-alpha).

## The Nix/NixOS part of the story

First started by [nyanbinary](https://github.com/nyabinary) in this [issue](https://github.com/NixOS/nixpkgs/issues/259641) on Oct 7th 2023 and has had amazing progress getting everything into the [nixpkgs repository](https://github.com/NixOS/nixpkgs). I've been working on [COSMIC Edit](https://github.com/NixOS/nixpkgs/pull/265103), [COSMIC Term](https://github.com/NixOS/nixpkgs/pull/276959) and [COSMIC Files](https://github.com/NixOS/nixpkgs/pull/278745) and with the packaging of COSMIC applications on Nix/NixOS this [bug](https://github.com/NixOS/nixpkgs/pull/276072) was found and fixed!

## Community-led Effort

This is largely a community effort with help from community members like:

- [lilyinstarlight](https://github.com/lilyinstarlight) like this [PR](https://github.com/NixOS/nixpkgs/pull/276072) which will help other Rust projects in NixOS or [this PR](https://github.com/pop-os/libcosmic/commit/3aef16bf9ed7f0b2ffbaa46b0d60b1a663ebcbd7) from [nbdd0121](https://github.com/nbdd0121) which will with packaging of COSMIC for other distros then just NixOS!
- nyabinary and [a-kenji](https://github.com/a-kenji) packaging up most of the COSMIC components like `cosmic-settings`, `cosmic-icons`, 
- [alyssais](https://github.com/alyssais) with a few drive-by commits with the large [commit](https://github.com/NixOS/nixpkgs/pull/251365) to package `cosmic-comp`, `cosmic-panel` and `cosmic-applets`.

If you want to join in to help feel free to join our [Matrix channel](https://matrix.to/#/#cosmic:nixos.org)!

## The fruits of this work

Thanks to this work you can now use one of the following packaged applications in NixOS! (you may need to pull it from unstable depending on how recent the merge was):

- cosmic-edit (NixOS 23.11, newer version in unstable)
- cosmic-settings (NixOS 23.11, newer version in unstable)
- cosmic-term (unstable so NixOS 24.05)
- cosmic-files (unstable so NixOS 24.05)

## Current state

![cosmic-session on NixOS](/images/{{ page.url }}/NixOS-COSMIC-running.png)

![cosmic-applibrary on NixOS](/images/{{ page.url }}/cosmic-applibrary.png)

![cosmic-launcher on NixOS](/images/{{ page.url }}/cosmic-launcher.png)

![cosmic-settings on NixOS](/images/{{ page.url }}/cosmic-settings.png)

![cosmic-tiling on NixOS](/images/{{ page.url }}/cosmic-tiling.png)

![file dialogs](/images/{{ page.url }}/file-dialogs.jpeg)

## Work still to be done

The major next step would be to have a module for COSMIC so that users can enable it similar to other Desktop Environments such as GNOME, Plasma and more! The progress for that is being tracked [here](https://github.com/NixOS/nixpkgs/pull/267099).
