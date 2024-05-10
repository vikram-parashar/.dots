#!bin/bash

options="
app: firefox\n
app: lutris\n
app: gimp\n
app: kitty\n
app: libreoffice\n
app: nautilus\n
app: pavucontrol\n
app: spotify\n
edit: dots note\n
edit: nvim\n
edit: hypridle\n
edit: hyprland\n
edit: hyprlock\n
edit: keybinds\n
edit: kitty\n
edit: monitors\n
edit: tofi\n
edit: waybar\n
sys: change wallpaper\n
sys: logout\n
sys: poweroff\n
sys: reboot\n
sys: suspend\n
dev: dev-portfolio\n
"

selected=$(echo -e "$options" | tofi)

case $selected in 
  "app: firefox")firefox & disown ;;
  "app: lutris")lutris & disown ;;
  "app: gimp")gimp & disown ;;
  "app: kitty")kitty & disown ;;
  "app: libreoffice")libreoffice & disown ;;
  "app: nautilus")nautilus & disown ;;
  "app: pavucontrol")pavucontrol & disown ;;
  "app: spotify")spotify & disown ;;
  "edit: dots note") cd ~/.dots/ && kitty nvim note;;
  "edit: hypridle")  cd ~/.config/hypr/ && kitty nvim hypridle.conf ;;
  "edit: nvim")  cd ~/.config/nvim/ && kitty nvim ;;
  "edit: hyprland") cd ~/.config/hypr/ && kitty nvim hyprland.conf ;;
  "edit: hyprlock")  cd ~/.config/hypr/ && kitty nvim hyprlock.conf ;;
  "edit: keybinds")  cd ~/.config/hypr/ && kitty nvim keybindings.conf ;;
  "edit: kitty") cd ~/.config/kitty && kitty nvim kitty.conf ;;
  "edit: monitors")  cd ~/.config/hypr/ && kitty nvim monitors.conf ;;
  "edit: tofi") cd ~/.config/tofi && kitty nvim script.sh;;
  "edit: waybar") cd ~/.config/waybar && kitty nvim config;;
  "sys: change wallpaper") sh ~/.config/hypr/scripts/nextWallpaper.sh;;
  "sys: lohout")killall Hyprland ;;
  "sys: poweroff")poweroff ;;
  "sys: reboot")reboot ;;
  "sys: suspend")systemctl suspend ;;
  "dev: dev-portfolio")cd ~/dev/dev-portfolio/ && kitty nvim ;;
esac
