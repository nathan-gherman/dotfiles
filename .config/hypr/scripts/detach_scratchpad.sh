#!/bin/bash
# detach from scratchpad back to current workspace

current=$(hyprctl monitors -j | jq '.[] | select(.focused==true) | .activeWorkspace.id')
hyprctl dispatch movetoworkspace "$current"
