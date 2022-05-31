#!/bin/bash

YABAI_MODE=$(yabai -m query --spaces --display | jq -r 'map(select(."has-focus" == true))[-1].type')
SPACE_NUMBER="$(yabai -m query --spaces --display | jq -r 'map(select(."has-focus" == true))[-1].index')"

sketchybar -m --set "yabai" label="$SPACE_NUMBER:$YABAI_MODE"
