#!/bin/bash

# Create a soft link to `sketchybar` to have 2 bars
ln -nsf $(which sketchybar) $(dirname $(which sketchybar))/sketchybar2
