sudo systemctl set-default multi-user.target
sudo systemctl stop gdm
sudo dnf remove xorg-x11-* gnome-shell -y


