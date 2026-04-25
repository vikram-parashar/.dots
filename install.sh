#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "==> Starting Fresh Hyprland Setup..."

# 1. Set up symbolic links (Assumes ~/.dots is already present)
echo "==> Setting up Dotfiles..."
ln -sf ~/.dots/config/fish ~/.config/
ln -sf ~/.dots/config/fontconfig/ ~/.config/
ln -sf ~/.dots/config/foot ~/.config/
ln -sf ~/.dots/config/gtk-3.0/ ~/.config/
ln -sf ~/.dots/config/gtk-4.0/ ~/.config/
ln -sf ~/.dots/config/hypr/ ~/.config/
ln -sf ~/.dots/config/mako/ ~/.config/
ln -sf ~/.dots/config/nvim ~/.config/
ln -sf ~/.dots/config/tofi ~/.config/
ln -sf ~/.dots/config/waybar ~/.config/
ln -sf ~/.dots/config/starship.toml ~/.config/

# 2. Install AUR package manager (yay)
echo "==> Installing Yay AUR helper..."
if [ ! -d "$HOME/yay" ]; then
    sudo pacman -Sy --needed base-devel git
    git clone https://aur.archlinux.org/yay.git "$HOME/yay"
    cd "$HOME/yay"
    makepkg -si
    cd "$HOME"
else
    echo "Yay already exists, skipping..."
fi

# 3. Environment Dependencies
echo "==> Installing Core System Packages (This will take a while)..."
yay -Sy --noconfirm \
    bluez bluez-utils brightnessctl fzf networkmanager pipewire-pulse btop \
    sddm \
    rofi \
    google-chrome \
    neovim \
    foot \
    waybar \
    hyprland hyprpaper hyprpicker xdg-desktop-portal-hyprland hyprpolkitagent hyprcursor hyprlock \
    nvidia-open-dkms nvidia-utils \
    ttf-jetbrains-mono-nerd ttf-0xproto-nerd bibata-cursor-theme \
    udisks2

# 4. Development and Productivity
echo "==> Installing Dev & Productivity Tools..."
yay -Sy --noconfirm \
    nodejs npm \
    python python-uv \
    docker \
    google-cloud-cli terraform \
    openoffice gimp inkscape

# 5. Activate Services
echo "==> Enabling Services..."
sudo systemctl enable sddm
sudo systemctl enable docker
sudo systemctl enable bluetooth

# 6. GTK Themes & Icons in a temporary directory
echo "==> Installing Fluent GTK Theme and Icons..."

# Create a secure temporary directory and register a cleanup trap
TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

# Clone and install Fluent GTK Theme (Grey variant)
git clone https://github.com/vinceliuice/Fluent-gtk-theme.git "$TMPDIR/Fluent-gtk-theme"
cd "$TMPDIR/Fluent-gtk-theme"
./install.sh -t grey -i arch --tweaks blur square

# Clone and install Fluent Icons
git clone https://github.com/vinceliuice/Fluent-icon-theme.git "$TMPDIR/Fluent-icon-theme"
cd "$TMPDIR/Fluent-icon-theme"
./install.sh

# 7. Rebuild Font Cache
echo "==> Rebuilding Font Cache..."
fc-cache -fv

echo "==> Installation Complete! Reboot to enter SDDM."
