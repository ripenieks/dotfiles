#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

setxkbmap lv -variant apostrophe

picom -b

xrandr --output eDP-1 --auto --pos 0x432 --output HDMI-1 --auto --pos 1366x0

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

~/.fehbg &

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

#export DESKTOP_SESSION=plasma #exec startplasma-x11 
exec i3
