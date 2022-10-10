#!/bin/bash

# for details https://askubuntu.com/questions/65764/how-do-i-toggle-sound-with-amixer?_gl=1*e645kx*_ga*NDE5NTA1NDA0LjE2NjUwMjQ2MzE.*_ga_S812YQPLT2*MTY2NTQyNzY2Ni4zLjAuMTY2NTQyNzY2Ni4wLjAuMA..#286437
# https://superuser.com/questions/805525/why-is-unmute-not-working-with-amixer-command

CURRENT_STATE=`amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]'`

if [[ $CURRENT_STATE == '[on]' ]]; then
    amixer set Master mute
else
    amixer set Master unmute
    amixer set Headphone unmute
    amixer set Speaker unmute
fi
