#!/bin/bash

# ask user if they want to clear pacman logs (default: yes)
read -p "Do you want to clear pacman logs? [Y/n]: " clear_logs
clear_logs=${clear_logs:-y}

# Remove cache
sudo pacman -Scc

# Remove orphaned packages
sudo pacman -Rns $(pacman -Qdtq)

# Clear pacman logs
if [[ "$clear_logs" =~ ^[Yy]$ ]]; then
    sudo truncate -s 0 /var/log/pacman.log
    echo "Pacman log cleared."
else
    echo "Pacman log not cleared.
    Continuing..."
fi
