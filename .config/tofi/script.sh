#!bin/bash

options="
app: firefox\n
app: putty\n
app: vm\n
app: gimp\n
app: kitty\n
app: onlyoffice\n
app: lutris\n
app: nautilus\n
app: pavucontrol\n
app: spotify\n
dev: dev-portfolio\n
dev: harryGraphics\n
dev: mahatejas\n
dev: id-records\n
dev: nextjs-dashboard\n
edit: dots note\n
edit: hypridle\n
edit: hyprland\n
edit: hyprlock\n
edit: keybinds\n
edit: kitty\n
edit: monitors\n
edit: nvim\n
edit: tofi\n
edit: waybar\n
sys: change wallpaper\n
sys: lock\n
sys: logout\n
sys: poweroff\n
sys: reboot\n
sys: suspend\n
"

selected=$(echo -e "$options" | tofi)

case $selected in 
  "app: firefox")firefox & disown ;;
  "app: gimp")gimp & disown ;;
  "app: kitty")kitty & disown ;;
  "app: onlyoffice")onlyoffice-desktopeditors & disown ;;
  "app: lutris")lutris & disown ;;
  "app: putty")putty & disown ;;
  "app: nautilus")nautilus & disown ;;
  "app: vm")virtualbox & disown ;;
  "app: pavucontrol")pavucontrol & disown ;;
  "app: spotify")spotify & disown ;;
  "dev: dev-portfolio")cd ~/dev/dev-portfolio/ && kitty nvim app/page.tsx;;
  "dev: id-records")cd ~/dev/id-records/ && kitty nvim app/page.tsx;;
  "dev: nextjs-dashboard")cd ~/dev/nextjs-dashboard/ && kitty nvim app/page.tsx;;
  "dev: harryGraphics")cd ~/dev/harry-graphics-site/ && kitty nvim app/page.tsx;;
  "dev: mahatejas")cd ~/dev/mahatejas-innovations-site/ && kitty nvim client/src/App.jsx;;
  "edit: dots note") cd ~/.dots/ && kitty nvim note;;
  "edit: hypridle")  cd ~/.config/hypr/ && kitty nvim hypridle.conf ;;
  "edit: hyprland") cd ~/.config/hypr/ && kitty nvim hyprland.conf ;;
  "edit: hyprlock")  cd ~/.config/hypr/ && kitty nvim hyprlock.conf ;;
  "edit: keybinds")  cd ~/.config/hypr/ && kitty nvim keybindings.conf ;;
  "edit: kitty") cd ~/.config/kitty && kitty nvim kitty.conf ;;
  "edit: monitors")  cd ~/.config/hypr/ && kitty nvim monitors.conf ;;
  "edit: nvim")  cd ~/.config/nvim/ && kitty nvim ;;
  "edit: tofi") cd ~/.config/tofi && kitty nvim script.sh;;
  "edit: waybar") cd ~/.config/waybar && kitty nvim config;;
  "sys: change wallpaper") sh ~/.config/hypr/scripts/nextWallpaper.sh;;
  "sys: lock")loginctl lock-session ;;
  "sys: lohout")killall Hyprland ;;
  "sys: poweroff")poweroff ;;
  "sys: reboot")reboot ;;
  "sys: suspend")systemctl suspend ;;
esac
