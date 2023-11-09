#!/usr/bin/env sh

# Wait for Hyprland to start, adjust sleep duration as needed
sleep 4

# Open Spotify on Workspaces 105 (laptop)
hyprctl dispatch focusmonitor eDP-1
hyprctl dispatch workspace 105
spotify &
sleep 2
hyprctl dispatch fullscreen

# Open Kitty terminal on Workspace 1
hyprctl dispatch focusmonitor HDMI-A-1
hyprctl dispatch workspace 1
kitty &
sleep 2

# Open Kitty with nvim on Workspace 3
hyprctl dispatch focusmonitor HDMI-A-1
hyprctl dispatch workspace 3
kitty nvim &
sleep 2

# Open Firefox on Workspaces 2, 9, and 10
hyprctl dispatch focusmonitor HDMI-A-1
hyprctl dispatch workspace 2
firefox &
sleep 2


# start playing music
sleep 3
exec playerctl play-pause

# on monitor focus on coding workspace
hyprctl dispatch workspace 3
