#!/bin/bash
# $1: dir for miui
# $2: dir for original

echo "<<< rm -rf cm default wallpaper"
rm -f $2/drawable-hdpi/default_wallpaper.jpg
rm -f $2/drawable-nodpi/default_wallpaper.jpg
rm -f $2/drawable-sw600dp-nodpi/default_wallpaper.jpg
rm -f $2/drawable-sw720dp-nodpi/default_wallpaper.jpg
rm -f $2/drawable-xhdpi/default_wallpaper.jpg
