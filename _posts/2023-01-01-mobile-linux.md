---
title: Mobile Linux
description: The issues with Linux on Mobile devices
updated: 2023-01-01
tags: nixos mobile-linux
---

# Issues

As we enter into the new year I'd like to document issues that are still present on this platform (screenshots will be from NixOS on a PinePhone). In this list will be pretty standard applications that most folks use on their mobile devices like below:

- Calculator
- Music
- Podcasts
- Text Editor
- Books
- News Feeds
- Social Media

## Calculator

### GNOME Calculator

For some reason it brings up the keyboard which isn't needed for this application as it already has those buttons:

| Main Window |
| ----------- |
| ![Main Window](/images/{{ page.url }}/calculator_keyboard.png) |

## Music

In this example we'll be using Lollypop and Spot (Spotify client):

### Lollypop

First we'll start with the great and the good in that order:

| Settings | Albums |
| -------- | ------ |
![Settings](/images/{{ page.url }}/lollypop_settings.png)| ![Albums](/images/{{ page.url }}/lollypop_album-list.png) |

Now the not so good, this repeats in this post and I think it has to do with the FilePicker itself not the application in question. Another issue which seems common is the fact that opening Settings or other features which you would expect be in the same application window creates a new window for itself.

| Collection change | Different Window |
| ----------------- | ---------------- |
| ![Collection Change](/images/{{ page.url }}/lollypop_collection_change.png) | ![Collection Change](/images/{{ page.url }}/lollypop_different-window.png) |

### Spot

## Podcasts

### GNOME Podcasts

This works really well until you try to import a file for your podcasts that you bring from another device.

| Importing | FilePicker |
| --------- | ---------- |
| ![Import Settings](/images/{{ page.url }}/podcast_import-window.png) |

## Text Editor

### Marker

While it looks great at the start it also has the same failing as the Podcast application when you try to open a file with it:

| Main Window | FilePicker |
| ----------- | ---------- |
| ![Main Window](/images/{{ page.url }}/marker.png) | ![Open Window](/images/{{ page.url }}/marker-open_window.png) |

## Books

### Foliate

| Settings | Overview |
| -------- | -------- |
| ![Phosh Settings](/images/{{ page.url }}/phosh-settings.png) | ![Phose Overview](/images/{{ page.url }}/phosh-overview.png) |

## News Feeds

### GNOME Feeds

| Settings | Overview |
| -------- | -------- |
| ![Phosh Settings](/images/{{ page.url }}/phosh-settings.png) | ![Phose Overview](/images/{{ page.url }}/phosh-overview.png) |

## Social Media

### Tootle

| Settings | Overview |
| -------- | -------- |
| ![Phosh Settings](/images/{{ page.url }}/phosh-settings.png) | ![Phose Overview](/images/{{ page.url }}/phosh-overview.png) |
