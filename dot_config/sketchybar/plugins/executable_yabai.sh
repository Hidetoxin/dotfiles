#!/bin/bash

yabai_mode=$(yabai -m query --spaces --display | jq -r 'map(select(."has-focus" == true))[-1].type')
space_number="$(yabai -m query --spaces --display | jq -r 'map(select(."has-focus" == true))[-1].index')"

sketchybar -m --set "yabai" label="$space_number:$yabai_mode"
