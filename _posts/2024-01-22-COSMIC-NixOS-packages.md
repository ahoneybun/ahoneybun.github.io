---
title: Packaging up COSMIC applications in NixOS
description: The work so far on my end in the nixpkgs repository
updated: 2024-01-22
tags: nixos nixos-23.11 nixos-24.05

comments:
  id: 110669673878756587
---

## From the beginning

Let's first start what COSMIC is and it's history, we'll look at the first blog post from System76 (the company behind COSMIC) [here](https://blog.system76.com/post/november-at-system76-products-promos--cosmic-de). Now for their latest update to date progress on COSMIC we'll look at their blog post [here](https://blog.system76.com/post/cosmic-the-road-to-alpha).

## The Nix/NixOS part of the story

First started by [nyanbinary](https://github.com/nyabinary) in this [issue](https://github.com/NixOS/nixpkgs/issues/259641) on Oct 7th 2023 and has had amazing progress getting everything into the [nixpkgs repository](https://github.com/NixOS/nixpkgs). I've been working with the team in our [Matrix channel](https://matrix.to/#/#cosmic:nixos.org), I've been working on [COSMIC Edit](https://github.com/NixOS/nixpkgs/pull/265103), [COSMIC Term](https://github.com/NixOS/nixpkgs/pull/276959) and [COSMIC Files](https://github.com/NixOS/nixpkgs/pull/278745) and with the packaging of COSMIC applications on Nix/NixOS this [bug](https://github.com/NixOS/nixpkgs/pull/276072) was found and fixed!

## The fruits of this work

Thanks to this work you can now use one of the following packaged applications in NixOS! (you may need to pull it from unstable depending on how recent the merge was):

- COSMIC Edit (NixOS 23.11)
- COSMIC Term (unstable so NixOS 24.05)
- COSMIC Files (unstable so NixOS 24.05)


