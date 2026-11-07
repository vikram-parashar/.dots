# Clone and install Fluent GTK Theme (Grey variant)
git clone https://github.com/vinceliuice/Fluent-gtk-theme.git "$TMPDIR/Fluent-gtk-theme"
cd "$TMPDIR/Fluent-gtk-theme"
./install.sh -t grey -i arch --tweaks blur square

# Clone and install Fluent Icons
git clone https://github.com/vinceliuice/Fluent-icon-theme.git "$TMPDIR/Fluent-icon-theme"
cd "$TMPDIR/Fluent-icon-theme"
./install.sh
