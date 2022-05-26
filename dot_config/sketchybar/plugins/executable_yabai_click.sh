#!/bin/bash

YABAI_MODE="$(yabai -m query --spaces --display | jq -r 'map(select(."has-focus" == true))[-1].type')"
SPACE_NUMBER="$(yabai -m query --spaces --display | jq 'map(select(."has-focus" == true))[-1].index')"

case "$YABAI_MODE" in
    bsp)
    yabai -m config layout "stack"
    ;;
    stack)
    yabai -m config layout "float"
    ;;
    float)
    yabai -m config layout "bsp"
    ;;
esac

new_YABAI_MODE="$(yabai -m query --spaces --display | jq -r 'map(select(."has-focus" == true))[-1].type')"

sketchybar -m --set "yabai" label="$SPACE_NUMBER:$new_YABAI_MODE"
