---
title: Mobile Linux (Phosh) in 2024
description: The issues with Linux on Mobile devices including tablets this year!
updated: 2024-04-10
tags: mobile-linux postmarketos
---

## New devices!

This year I have the following devices instead of the PinePhone to review Phosh:

- OnePlus 6T (Phone)
- Lenovo IdeaPad Duet (Tablet)

These are both running postmarketOS instead of NixOS like last year had. Now let's start with screenshots of these new (to me) devices with their new OSes if you haven't seen Phosh in a while (or ever):

![OnePlus 6T on the Overview](/images/{{ page.url }}/OnePlus-6T_Overview.png)

![Lenovo IdeaPad Duet on the Overview](/images/{{ page.url }}/Lenovo-IdeaPad-Duet_Overview.png)

## UI/UX Issues

Let's pick up on the issues that we talked about last year and where they are, below we'll most often see issues:

- FilePicker
- New windows for certain sections of applications like Settings 

Yep those are still issues even with applications that use libadwaita.



## Application Issues

We'll use the same list from 2023 since I think it's a good list of things that most folks would expect but we'll add more basic things that I left out last time. Like the Phone and SMS applications lol:

- Phone*
- SMS*
- Matrix (Fractal)
- Browser
- Calculator
- Music
- Podcasts
- Text Editor
- Books
- News Feeds
- Social Media

* Now I don't have a working SIM card in the phone so I can't test them but there are apps and they worked fine in the PinePhone.

### Matrix

Fractal works well and looks good!

![OnePlus 6T with Fractal signed in](/images/{{ page.url }}/OnePlus-6T_Fractal.png)

### Browser

GNOME Web

Now postmarketOS ships with Firefox ESR with patches to make it work decent on small devices but I found GNOME Web to work better.



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

## Podcasts

GNOME Podcasts

This works really well until you try to import a file for your podcasts that you bring from another device.

| Importing |
| --------- |
| ![GNOME Podcasts Import Settings](/images/{{ page.url }}/podcast_import-window.png) |

## Text Editor

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

Tuba

This works well and can manage more then one account as well! Works great on the phone and tablet though logging in can be difficult with getting the auth code from the browser.

![OnePlus 6T with Tuba feed](/images/{{ page.url }}/OnePlus-6T_Tuba.png)

![OnePlus 6T with Tuba profile](/images/{{ page.url }}/OnePlus-6T_Tuba2.png)
