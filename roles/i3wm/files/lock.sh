#!/bin/sh -e

# screenshot!
scrot /tmp/screen_locked.png

# Blur it
#convert /tmp/screen_locked.png -blur 0x6 /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 10% -scale 1000% /tmp/screen_locked.png

# Lock screen with blurred image
i3lock -e -n -i /tmp/screen_locked.png
