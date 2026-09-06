#!/bin/bash

status=$(acpi -b | awk '/Battery 0:/ {print $3}' | cut -d ',' -f1)
percentage=$(acpi -b | cut -d ',' -f2)

COLOR_ICON="#F0C674" # Soft Gold for active icons
COLOR_TEXT="#FFFFFF" # White for the battery percentage

if [[ "$status" == "Charging" ]]; then
  #Icon for battery charging
  echo "%{F${COLOR_ICON}}󰂅 %{F-}%{F${COLOR_TEXT}}$percentage%{F-}"

else
  #icon when not connected to a charger
  echo "%{F${COLOR_ICON}} %{F-}%{F${COLOR_TEXT}}$percentage%{F-}"
fi
