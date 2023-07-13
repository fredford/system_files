#!/bin/bash

# Update the package lists and upgrade installed packages with yay
yay -Syu --noconfirm

# Clean up unused packages and old versions with yay
yay -Yc --noconfirm

# Update the package lists and upgrade installed packages with pacman
sudo pacman -Syu --noconfirm

# Clean up unused packages and old versions with pacman
sudo pacman -Sc --noconfirm

# Clean up package cache with pacman
sudo pacman -Scc --noconfirm
