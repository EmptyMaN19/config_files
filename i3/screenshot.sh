#!/bin/bash

INPUT=$(dmenu -p "Enter any specific name: " </dev/null)
STATUS=$?
#the issue is that dmenu return the escape sequence when triggered instead it immediately exists and return a status 1,
#so we're gonna check for that

if [[ $STATUS -ne 0 ]]; then
  exit 0
fi

#sleep for a little bit so that that the dmenu prompt dissapears before the screenshot is taken
sleep 0.4

#when a name is given save the screenshot using that name only
if [[ $INPUT != '' ]]; then
  maim --hidecursor "$HOME/Pictures/screenshot/${INPUT}.png"

#when no location is provided the screenshot is saved by the default date parameter
elif [[ $INPUT == '' ]]; then
  maim --hidecursor "$HOME/Pictures/screenshot/$(date +%s).png"
fi

notify-send "Screenshot" "screenshot created" &
sleep 1
pkill i3-nagbar
