# Set up symbolic links
```bash
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
yay -Sy
	bluez bluez-utils brightnessctl fzf networkmanager pipewire-pulse # utils
    sddm qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg \ # display manager
    zen-browser\        # browser
    neovim\             # text editor
    foot\               # terminal
    waybar\             # status bar
    hyprland hyprpaper\ # window manager
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

