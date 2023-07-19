# System Files
 
 A series of system files that I use to install, update and provide configuration.

## Packages used


### ALR (pacman)
- emacs
- kitty

### AUR (yay)
- i3
- GitHub-Desktop
- Discord
- Visual Studio Code
- Google Chrome

## Themes and Fonts used

- **Font**: IBM Plex Mono
- **Theme**: Catppuccin-GTK-Theme-Macchiato

## Installation

Install base requirements
```bash
sudo pacman -S --noconfirm base-devel git
```
Create directories to be used
```bash
mkdir GitHub && mkdir Programs && mkdir Scripts
```
Clone the system files repository for installation
```bash
cd GitHub && git clone https://github.com/fredford/system_files.git
```
Next perform a fresh install
```bash
cd system_files && chmod +x install.sh && ./install.sh
```