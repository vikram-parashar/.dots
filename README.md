```markdown
# System Configuration Pre-Requisites

## SDDM theme
Clone this repository, copy fonts to /usr/share/fonts/:

```
sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme
sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/
```

Then edit /etc/sddm.conf, so that it looks like this:

```
echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf
```

## reFind theme
-    Locate your refind EFI directory. This is commonly /boot/EFI/refind though it will depend on where you mount your ESP and where rEFInd is installed. fdisk -l and mount may help.

-    Create a folder called themes inside it, if it doesn't already exist

-    Clone `https://github.com/evanpurkhiser/rEFInd-minimal` repository into the themes directory.

-    To enable the theme add include themes/rEFInd-minimal/theme.conf at the end of refind.conf.



## Create User and Setup Password

```bash
useradd vikram
passwd vikram
```

## Grant Sudo Privileges

```bash
# Find and uncomment the appropriate line
visudo /etc/sudoers
```

## Symlink Dotfiles

```bash
ln -s /home/vikram/.dots/.config /home/vikram/.config
ln -s /home/vikram/.dots/.bashrc /home/vikram/.bashrc
```

## Install Yay AUR Helper

```bash
git clone https://archlinux.org/yay.git
cd yay
makepkg -si
```

## Essential Software Installation

```bash
yay -S hyprland kitty firefox \
wl-clipboard ttf-cascadia-code-nerd \
starship swww libreoffice-fresh \
nodejs npm sddm mako\
bc wget imv qt5-wayland qt6-wayland\
gimp android-file-transfer\
fish pokemon-colorscripts-git \
exa btop hyprpicker-git\
hypridle hyprlock udiskie\
```

## Change Shell

```bash
chsh -s /bin/fish
```
run `:PackerSync` in nvim

## Neovim setup

```bash
yay -S nvim-packer-git
```
run `:PackerSync` in nvim

## Enable Multilib Repository

To enable multilib repository, uncomment the `[multilib]` section in `/etc/pacman.conf`:

```plaintext
/etc/pacman.conf

[multilib]
Include = /etc/pacman.d/mirrorlist
```

Then run:

```bash
sudo pacman -Syy
```

## Nvidia Driver Installation

```bash
sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils libva-nvidia-driver
```

Add `nvidia_drm.modeset=1` in kernel parameter in bootloader. Also, add `nvidia`, `nvidia_modeset`, `nvidia_uvm`, `nvidia_drm` to MODULES in `/etc/mkinitcpio.conf`, then run:

```bash
sudo mkinitcpio -P
systemctl enable nvidia-sleep.service
systemctl enable nvidia-hibernate.service
systemctl enable nvidia-resume.service
```
Add nvidia.NVreg_PreserveVideoMemoryAllocations=1 to your kernel parameters if you don’t have it already. This will solve issues with corrupted desktop / videos after waking.


## Display manager
```bash
systemctl enable sddm.service
```

## Sound System Configuration

```bash
sudo pacman -S sof-firmware alsa-firmware pipewire wireplumber pipewire-pulse
systemctl --user enable pipewire
systemctl --user enable pipewire-pulse
systemctl --user enable wireplumber
```

## Gaming

```bash
sudo pacman -S wine lutris lutris
```
