# dotfiles

Personal dotfiles for my **Arch Linux + Hyprland** setup — a minimal, Wayland-native desktop built around aesthetics, modularity, and keyboard-driven workflow.

![Hyprland](https://img.shields.io/badge/Hyprland-Wayland-blue?style=flat-square)
![Arch](https://img.shields.io/badge/Arch%20Linux-informational?style=flat-square&logo=archlinux&logoColor=white)

---

## Overview

This is a fully configured [Hyprland](https://hyprland.org/) tiling compositor setup, designed for a laptop (ThinkPad T490, 1080p). Everything runs on Wayland — no X11 dependencies needed for daily use.

### Core Stack

| Component | Tool |
|---|---|
| **Compositor** | Hyprland |
| **Terminal** | Kitty |
| **App Launcher** | Rofi |
| **Status Bar** | Waybar |
| **File Manager** | Dolphin / Yazi |
| **Browser** | Zen |
| **Editor** | VS Code |
| **Notifications** | SwayNC |
| **Wallpaper Engine** | swww |
| **Lock Screen** | hyprlock |
| **Idle Daemon** | hypridle |
| **Clipboard** | cliphist + wl-paste |
| **Logout Menu** | wlogout |

---

## Hyprland Configuration

The config is **modular by design** — `hyprland.conf` acts as the entry point and sources everything else. This keeps things clean and easy to tweak without touching a monolithic file.

### Wallpaper-Based Theming

A `colors.conf` file holds Material Design-style color tokens (`$primary`, `$secondary`, `$on_background`, etc.) generated from the current wallpaper. These variables are sourced across the entire Hyprland ecosystem — the compositor, hyprlock, and Waybar all pull from the same palette for a cohesive look.

### Lock Screen & Idle

**hyprlock** displays a blurred wallpaper background with a centered clock (hours, minutes, day, and date) using JetBrainsMono Nerd Font.

**hypridle** handles the idle pipeline:
- **2.5 min** — dims the screen
- **5 min** — locks the session
- **5.5 min** — turns off the display
- **30 min** — suspends the system

### Animations

Custom bezier curves for window open/close, workspace switching, and border transitions. The feel leans into smooth, slightly overshooting motions for a polished experience.

### Look & Feel

- **Layout:** Dwindle
- **Gaps:** 2px inner / 8px outer
- **Border:** 2px, colored by the wallpaper palette
- **Rounding:** 4px
- **Blur:** enabled with xray and popup support
- **Opacity:** focused windows at 100%, unfocused at 80%

### Key Bindings (SUPER as modifier)

| Shortcut | Action |
|---|---|
| `Super + Q` | Terminal |
| `Super + E` | Rofi launcher |
| `Super + F` | Browser |
| `Super + V` | VS Code |
| `Super + S` | Spotify |
| `Super + D` | File manager |
| `Super + W` | Wallpaper picker |
| `Super + L` | Lock screen |
| `Super + C` | Clipboard history |
| `Super + G` | Color picker (hyprpicker) |
| `Super + Shift + S` | Screenshot |
| `Super + H` | Toggle Waybar visibility |
| `Super + Ctrl + B` | Waybar styles menu |
| `Super + 1-0` | Switch workspace |
| `Super + Shift + 1-0` | Move window to workspace |
| `Super + Arrow Keys` | Move focus |
| `Super + Shift + Arrow Keys` | Move window |
| `Super + Ctrl + Arrow Keys` | Resize window |

Media keys for volume, brightness, and player controls are also mapped.

### Scripts

A set of utility scripts under `scripts/` handle things like screenshots, volume/brightness control with notifications, wallpaper picking, Waybar style/layout switching, and more.

---

## Dependencies

Key packages needed to reproduce this setup:

```
hyprland hyprlock hypridle
kitty waybar rofi-wayland
swww swaync wlogout
cliphist wl-paste wl-clipboard
brightnessctl playerctl
dolphin hyprpicker
```

---

## Installation

```bash
# Clone into your config directory
# Symlink or copy the hypr folder
ln -s ~/dotfiles/hypr ~/.config/hypr
```

> Adjust paths and package names to your setup. Some scripts may reference hardcoded paths.

---

## Credits

Changes made on top of the binnewbs [repository](https://github.com/binnewbs/arch-hyprland) dotfiles.
Built on top of the [Hyprland](https://hyprland.org/) ecosystem. Inspired by the ricing community.
