---
title: Mobile Linux (Phosh) in 2024
description: The issues with Linux on Mobile devices including tablets this year!
updated: 2024-04-10
tags: mobile-linux postmarketos
---

## UI/UX Issues

Let's pick up on the issues that we talked about last year and where they are, below we'll most often see issues:

- FilePicker
- New windows for certain sections of applications like Settings 

Yep those are still issues even with applications that use libadwaita.

## Application Issues

As we enter into the new year I'd like to document issues that are still present on this platform (screenshots will be from NixOS on a PinePhone). In this list will be pretty standard applications that most folks use on their mobile devices like below:

- Browser
- Calculator
- Music
- Podcasts
- Text Editor
- Books
- News Feeds
- Social Media

### Browser

GNOME Web

For some reason the cursor or something like that is over the address which made it difficult to type:

| Address bar |
| ----------- |
| ![GNOME Web enter address](/images/{{ page.url }}/gnome-web_enter-address.png)

| google.com | wsj.com |
| ---------- | ----
| ![GNOME Web Google](/images/{{ page.url }}/gnome-web_google-test.png) | ![GNOME Web Wall Street Journal](/images/{{ page.url }}/gnome-web_wsj-test.png) |

## Calculator

GNOME Calculator

For some reason it brings up the keyboard which isn't needed for this application as it already has those buttons:

| Main Window |
| ----------- |
| ![GNOME Calculator Main Window](/images/{{ page.url }}/calculator_keyboard.png) |

## Music

In this example we'll be using Lollypop and Spot (Spotify client):

Lollypop

First we'll start with the great and the good in that order:

| Settings | Albums |
| -------- | ------ |
![Lollypop Settings](/images/{{ page.url }}/lollypop_settings.png)| ![Lollypop Albums](/images/{{ page.url }}/lollypop_album-list.png) |

Now the not so good, this repeats in this post and I think it has to do with the FilePicker itself not the application in question. Another issue which seems common is the fact that opening Settings or other features which you would expect be in the same application window creates a new window for itself.

| Collection change | Different Window |
| ----------------- | ---------------- |
| ![Lollypop Collection Change](/images/{{ page.url }}/lollypop_collection_change.png) | ![Lollypop Collection Add](/images/{{ page.url }}/lollypop_different-window.png) |

Spot

Everything looks good and behaves like one would expect other then the Settings like other application as you have a whole new window. The application also doesn't seemt to save Spotify login though not sure if that is the application, Phosh or Mobile NixOS:

| Login | Default View |
| ----- | ------------ |
![Spot Login](/images/{{ page.url }}/spot_login-prompt.png)| ![Spot Albums](/images/{{ page.url }}/spot_default-view.png) |

Album views:

| List | Cover |
| ---- | ----- |
| ![Spot Album List](/images/{{ page.url }}/spot_album-list.png) | ![Spot Album Cover](/images/{{ page.url }}/spot_album-view.png) |

## Podcasts

GNOME Podcasts

This works really well until you try to import a file for your podcasts that you bring from another device.

| Importing |
| --------- |
| ![GNOME Podcasts Import Settings](/images/{{ page.url }}/podcast_import-window.png) |

## Text Editor

Marker

While it looks great at the start it also has the same failing as the Podcast application when you try to open a file with it:

| Main Window | FilePicker |
| ----------- | ---------- |
| ![Marker Main Window](/images/{{ page.url }}/marker.png) | ![Marker Open Window](/images/{{ page.url }}/marker-open_window.png) |

## Books

Foliate

The main application seems good until you look to the right where content is off screen a bit.

| Main Window | Catalog |
| ----------- | ------- |
| ![Foliate Window](/images/{{ page.url }}/foliate_default.png) | ![Foliate Catalog](/images/{{ page.url }}/foliate_catalog.png) |

This continues to the download window and import which are not scaled and go off the screen.

| Download | Import |
| -------- | ------- |
| ![Foliate Download Window](/images/{{ page.url }}/foliate_download.png) | ![Foliate Import](/images/{{ page.url }}/foliate_import-window.png) |

## News Feeds

GNOME Feeds

This starts out looking great and continues until you hit the FilePicker diaglog window, the Settings also creates a new window.

| Main Window | Settings |
| ----------- | -------- |
| ![Feeds Main Window](/images/{{ page.url }}/feeds_default.png) | ![Feeds Settings](/images/{{ page.url }}/feeds_settings.png) |

| Add Feed | Import File |
| -------- | ----------- |
| ![Feeds Add Dialog](/images/{{ page.url }}/feeds_add-feed.png) | ![Feeds Import Window](/images/{{ page.url }}/feeds_import-window.png) |

## Social Media

Tootle/Tooth

This application is no longer maintained but there is a new one that hasn't been packaged yet but it looks like it will be better! Here is a [link](https://github.com/GeopJr/Tooth) to it. 

