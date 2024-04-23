---
title: Mobile Linux (Phosh) in 2024
description: The issues with Linux on Mobile devices including tablets this year!
updated: 2024-04-23
tags: mobile-linux postmarketos
---

## New devices!

This year I have the following devices instead of the PinePhone to review Phosh:

- OnePlus 6T (Phone)
- Lenovo IdeaPad Duet (Tablet)

These are both running postmarketOS instead of NixOS like last year had. Now let's start with screenshots of these new (to me) devices with their new OSes if you haven't seen Phosh in a while (or ever):

| Overview | About |
| -------- | ----- |
| ![OnePlus 6T on the Overview](/images/{{ page.url }}/OnePlus-6T_Overview.png) | ![OnePlus 6T About Settings](/images/{{ page.url }}/OnePlus-6T_About.png) |

| Overview | About |
| -------- | ----- |
| [![Lenovo IdeaPad Duet on the Overview](/images/{{ page.url }}/Lenovo-IdeaPad-Duet_Overview.png)](/images/{{ page.url }}/Lenovo-IdeaPad-Duet_Overview.png) | [![Lenovo IdeaPad Duet About Setings](/images/{{ page.url }}/Lenovo-IdeaPad-Duet_About.png)](/images/{{ page.url }}/Lenovo-IdeaPad-Duet_About.png) |

NOTE: You can click on the images for the full sized image.

## UI/UX Issues

Let's pick up on the issues that we talked about last year and where they are, below we'll most often see issues:

- FilePicker
- New windows for certain sections of applications like Settings 

Yep those are still issues even with applications that use libadwaita.

![Open File Dialog issue](/images/{{ page.url }}/Open-File-Dialog.png)

## Application Issues

We'll use the same list from 2023 since I think it's a good list of things that most folks would expect but we'll add more basic things that I left out last time. Now a lot of screenshots will be the same since the same UI/UX issues exist but there will be some new ones that include what a tablet looks like:

- Phone*
- SMS*
- Matrix (Fractal)
- Browser
- Calculator
- Calendar
- Clocks
- File Manager
- Music
- Video
- Podcasts
- Text Editor
- Books
- News Feeds
- Social Media

* Now I don't have a working SIM card in the phone so I can't test them but there are apps and they worked fine in the PinePhone.

## Matrix

### Fractal

This works well and looks good!

![OnePlus 6T with Fractal signed in](/images/{{ page.url }}/OnePlus-6T_Fractal.png)

## Browser

### GNOME Web

Now postmarketOS ships with Firefox ESR with patches to make it work decent on small devices but I found GNOME Web to work better. It also has a WebApp manager so you can install websites like applications with a launcher like I have done with the [LFNW website](https://linuxfestnorthwest.org/) here:

![OnePlus 6T with GNOME WebApp](/images/{{ page.url }}/OnePlus-6T_GNOME-Web_webapp.png)

## Calculator

### GNOME Calculator

Again for some reason the keyboard which isn't needed for this application as it already has those buttons:

| Main Window |
| ----------- |
| ![GNOME Calculator Main Window](/images/{{ page.url }}/OnePlus-6T_Calculator.png) |

## Calendar

### GNOME Calendar

Now I think GNOME Calendar is nice and works better then the default karlendar that postmarketOS ships with.

![OnePlus 6T with GNOME Calendar](/images/{{ page.url }}/OnePlus-6T_Calendar.png)

## Clocks

### GNOME Clocks

This application looks great on mobile as well.

![OnePlus 6T with GNOME Clocks](/images/{{ page.url }}/OnePlus-6T_Clocks.png)

## File Manager

### GNOME Files and Portfolio

Now I used to recommand Portfolio and it is still a great piece of software but now GNOME Files looks great on mobile as well!

| GNOME Files | Portfolio |
| ----------- | --------- |
| ![GNOME Files](/images/{{ page.url}}/OnePlus-6T_Files.png) | ![Portfolio](/images/{{ page.url }}/portfolio.png) |

**NOTE:** The Portfolio screenshot is from the PinePhone. 

## Music

In this example we'll be using Lollypop and Spot (Spotify client):

### Lollypop

Now the same issues as last time are still there so I'll re-use those images:

| Settings | Albums |
| -------- | ------ |
![Lollypop Settings](/images/{{ page.url }}/lollypop_settings.png)| ![Lollypop Albums](/images/{{ page.url }}/lollypop_album-list.png) |

| Collection change | Different Window |
| ----------------- | ---------------- |
| ![Lollypop Collection Change](/images/{{ page.url }}/lollypop_collection_change.png) | ![Lollypop Collection Add](/images/{{ page.url }}/lollypop_different-window.png) |

## Video

### Light Video

Now I have this sideways as I have issues rotating the tablet sometimes.

![Lenovo IdeaPad Duet playing WING IT!](/images/{{ page.url }}/Lenovo-IdeaPad-Duet_Video-Player.png)

## Podcasts

### GNOME Podcasts

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

### Foliate

The main application seems good until you look to the right where content is off screen a bit.

| Main Window | Catalog |
| ----------- | ------- |
| ![Foliate Window](/images/{{ page.url }}/foliate_default.png) | ![Foliate Catalog](/images/{{ page.url }}/foliate_catalog.png) |

This continues to the download window and import which are not scaled and go off the screen.

| Download | Import |
| -------- | ------- |
| ![Foliate Download Window](/images/{{ page.url }}/foliate_download.png) | ![Foliate Import](/images/{{ page.url }}/foliate_import-window.png) |

## News Feeds

### GNOME Feeds

This starts out looking great and continues until you hit the FilePicker diaglog window, the Settings also creates a new window.

| Main Window | Settings |
| ----------- | -------- |
| ![Feeds Main Window](/images/{{ page.url }}/feeds_default.png) | ![Feeds Settings](/images/{{ page.url }}/feeds_settings.png) |

| Add Feed | Import File |
| -------- | ----------- |
| ![Feeds Add Dialog](/images/{{ page.url }}/feeds_add-feed.png) | ![Feeds Import Window](/images/{{ page.url }}/feeds_import-window.png) |

## Social Media

### Tuba

This works well and can manage more then one account as well! Works great on the phone and tablet though logging in can be difficult with getting the auth code from the browser.

![OnePlus 6T with Tuba feed](/images/{{ page.url }}/OnePlus-6T_Tuba.png)

![OnePlus 6T with Tuba profile](/images/{{ page.url }}/OnePlus-6T_Tuba2.png)

## Bonus section

### GIMP

![GIMP on a tablet](/images/{{ page.url }}/Lenovo-IdeaPad-Duet_GIMP.png)

### Polari

![Polari on OnePlus 6T](/images/{{ page.url }}/OnePlus-6T_Polari.png)
