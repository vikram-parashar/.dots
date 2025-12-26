# Set up symbolic links
```bash
ln -sf /home/vikram/.dots/local/share/icons/Bibata-Modern-Ice/ /home/vikram/.local/share/icons/
ln -sf /home/vikram/.dots/local/share/icons/ /home/vikram/.local/share/
ln -sf /home/vikram/.dots/config/starship.toml /home/vikram/.config/
ln -sf /home/vikram/.dots/config/waybar /home/vikram/.config/
ln -sf /home/vikram/.dots/config/foot /home/vikram/.config/
ln -sf /home/vikram/.dots/config/fish /home/vikram/.config/
ln -sf /home/vikram/.dots/config/nvim /home/vikram/.config/
ln -sf /home/vikram/.dots/config/hypr/ /home/vikram/.config/
ln -sf /home/vikram/.dots/config/hypr/ /home/vikram/.config/hypr
```

# Install a AUR package manager
```bash
sudo pacman -Sy --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

# Environment Dependencies
(based on my personal preferences and hyprland)
```bash
yay -Sy \
	bluez bluez-utils brightnessctl fzf networkmanager pipewire-pulse btop \ # cli utils
    sddm qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg \ # display manager
    rofi\               # app launcher
    zen-browser\        # browser
    neovim\             # text editor
    foot\               # terminal
    waybar\             # status bar
    hyprland hyprpaper hyprpicker xdg-desktop-portal-hyprland hyprpolkitagent hyprcursor hyprlock\ # window manager
    nvidia-open-dkms nvidia-utils\   # nvidia drivers
    ttf-jetbrains-mono-nerd  ttf-0xproto-nerd \ # terminal - waybar font
    udisks2
```

# Activate Services
```bash
sudo systemctl enable sddm
```

# Development and Productivity
```bash
yay -Sy
    nodejs npm\        
    python python-uv\    
    docker\        
    google-cloud-cli terraform\ # Data engineering
    libreoffice-fresh gimp inkscape\  # office and graphics

## Themese
- SDDM https://github.com/Keyitdev/sddm-astronaut-theme
@ currently using jake_the_dog

