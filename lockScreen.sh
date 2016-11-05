#!/bin/bash
# Source: http://plankenau.com/blog/post/gaussianlock

# Create temporary directory (if not already in existance)
mkdir -p ~/Install/i3/temp

# Take a screen shot, store in the temporary directory
scrot ~/Install/i3/temp/screenshot.png

# Blur the image using Glosson Blur
#  Version: ImageMagick 6.8.9-9 Q16 x86_64 2016-06-01 http://www.imagemagick.org
#  Usage: convert [options ...] file [ [options ...] file ...] [options ...] file
#  -blur geometry       reduce image noise and reduce detail levels
convert ~/Install/i3/temp/screenshot.png -blur 0x10 ~/Install/i3/temp/screenshotblur.png
# convert ~/Install/i3/temp/screenshot.png -blur 0x5 ~/Install/i3/temp/screenshotblur.png

# Lock the image
i3lock -i ~/Install/i3/temp/screenshotblur.png
