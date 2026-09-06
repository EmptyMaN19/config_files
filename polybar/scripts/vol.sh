#!/bin/bash

# 1. Get the currently default PulseAudio sink name
ACTIVE_SINK=$(pactl get-default-sink)

# 2. Get the mute status of the default sink
MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '/Mute:/ {print $2}')

# 3. Extract the volume percentage safely from the default sink data
VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '/Volume:/ {print $5}')

# ---- COLOR DEFINITIONS ----
# Replace these hex codes with your own color choices!
COLOR_ICON="#F0C674" # Soft Gold for active icons
COLOR_MUTE="#707880" # Muted gray for muted status
COLOR_TEXT="#FFFFFF" # White for the volume numbers

if [[ "$MUTE" =~ "no" ]]; then
  if [[ "$ACTIVE_SINK" =~ "headphone" || "$ACTIVE_SINK" =~ "bluez" ]]; then
    # Headphone/Bluetooth Active: Icon in gold, Text in white
    echo "%{F${COLOR_ICON}}%{F-} %{F${COLOR_TEXT}}$VOLUME%{F-}"
  else
    # Default Speaker Active: Icon in gold, Text in white
    echo "%{F${COLOR_ICON}} %{F-} %{F${COLOR_TEXT}}$VOLUME%{F-}"
  fi
else
  # Muted: Whole module turns gray
  echo "%{F${COLOR_MUTE}}  Muted%{F-}"
fi
