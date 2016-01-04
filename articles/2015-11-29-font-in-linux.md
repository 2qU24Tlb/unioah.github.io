title: Make fonts look better in Linux
date: 2015-11-29 23:17:12
categories: Linux
tags: fonts
---

##  Install Windows Fonts
Some web pages are specified with certain fonts which may not available in Linux. Chrome uses its own fonts to minimize the differences. But in firefox, some pages will look ugly since there are no such fonts installed along with firefox. One way to solve this by installing windows fonts in Linux. See this [tutorial](https://wiki.archlinux.org/index.php/Microsoft_fonts) for detail.
But you still need a valid windows installation to get all fonts (and license). If you run into **checksum error** you can use *makepkg -g >> PKGBUILD* and *makepkg PKGBUILD* to generate hash yourself. (Thanks to [Mons1990](https://aur.archlinux.org/pkgbase/ttf-ms-win10/?comments=all))

## Install Monaco Font For Programming
Personally, I like to use [Monaco](https://github.com/todylu/monaco.ttf) as the major font for displaying code. It looks pretty cool in console.

## Install Infinality tools to imorve freetype2
**The Infinality is a set of Freetype patches that try to provide an improved font rendering for Linux and allow easy customization. Using it, you can easily set the font style to emulate OSX or Windows.**
Here is the [tutorial](https://wiki.archlinux.org/index.php/Infinality) about how to install it in Arch Linux. Since it is not in office repository, first you need add an unofficial key locally and then add their repository into *pacman.conf*. See **Installation** segment for detail.

## Disable bitmap fonts
To disable bitmap fonts (which are sometimes used as fallbacks for missing fonts, causing text to be rendered pixelated), use 70-no-bitmaps.conf (which is not placed by fontconfig by default):
``` shell
# cd /etc/fonts/conf.d
# rm 70-yes-bitmaps.conf
# ln -s ../conf.avail/70-no-bitmaps.conf
```

[Ref]
<https://wiki.archlinux.org/index.php/Font_configuration>
