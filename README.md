# Post-Installation Steps & Notes

## 1. SDDM Astronaut Theme
The SDDM theme was not fully automated in `install.sh` to prevent accidental overwrites. You need to manually apply it:
1. Download the release from: https://github.com/Keyitdev/sddm-astronaut-theme
2. Extract the archive.
3. Move the extracted folder to `/usr/share/sddm/themes/astronaut` (requires sudo).
4. Edit `/etc/sddm.conf.d/default.conf` (create it if it doesn't exist) and add/set:
```ini
[Theme]
Current=astronaut
CursorTheme=Bibata-Modern-Ice
```
*Note: To use the `jake_the_dog` background, rename your wallpaper to `background.jpg` or `background.png` and place it inside `/usr/share/sddm/themes/astronaut/`.*

## 2. Manual System Service Starts
Services were enabled to start on boot, but you need to start them for your current session without rebooting:
```bash
sudo systemctl start docker
sudo systemctl start bluetooth
```

## 3. User Permissions
Add your user to the docker group so you don't need sudo to run containers:
```bash
sudo usermod -aG docker $USER
```
*(You must log out and log back in, or reboot, for this to take effect).*

## 4. Bluetooth & Audio
- Use `bluetoothctl` to pair your devices initially.
- PipeWire usually works out of the box, but if you have no audio, run `systemctl --user restart pipewire pipewire-pulse`.

## 5. Portal Fix (Crucial for Hyprland)
If file pickers (in Firefox, Chrome, or GTK apps) don't work or freeze:
1. Ensure `xdg-desktop-portal-hyprland` is installed (it is in the script).
2. Make sure you DO NOT have `xdg-desktop-portal-gnome` or `xdg-desktop-portal-kde` installed. If you do, remove them:
```bash
sudo pacman -Rns xdg-desktop-portal-gnome xdg-desktop-portal-kde
```
3. Reboot.

## 6. Nvidia Specifics
Since you installed Nvidia drivers, make sure your Hyprland config has the necessary Nvidia environment variables, otherwise screen tearing and scaling will break:
```hyprlang
env = LIBVA_DRIVER_NAME,nvidia
env = __GLX_VENDOR_LIBRARY_NAME,nvidia
env = GBM_BACKEND,nvidia-drm
```
*Also, ensure you added `nvidia_drm.fbdev=1 nvidia-drm.modeset=1 nvidia.NVreg_PreserveVideoMemoryAllocations=1"` to your kernel parameters GRUB_CMDLINE_LINUX_DEFAULT in your bootloader (/etc/default/grub) prior to running this script.*

## 7. Cloud CLI & Terraform
- Run `gcloud init` to configure your Google Cloud authentication.
- Run `terraform init` in your project directories to initialize providers.

## 8. Reboot
Finally, restart your machine to ensure SDDM loads, all environment variables inject properly, and Nvidia/Bluetooth services kick in.
