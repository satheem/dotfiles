# My Dotfiles Backup

This repository contains the complete configuration for my **Arch Linux + i3 setup**, managed using [GNU Stow](https://www.gnu.org/software/stow/) for easy deployment and portability.

## Setup Preview

Here’s a glimpse of my **Arch Linux + i3** configuration with custom themes, polybar, and workflows:

<p align="center">
  <img src="https://github.com/user-attachments/assets/fad2e5ab-0c64-4c90-baf2-632f3ca31053" width="600" alt="i3 Setup Screenshot 1"/>
  <img src="https://github.com/user-attachments/assets/6ec5ed3f-9fe0-4f57-84c9-d29f28749a57" width="600" alt="i3 Setup Screenshot 2"/>
  <img src="https://github.com/user-attachments/assets/ce18b578-e629-43af-98d0-b6a1201869e2" width="600" alt="i3 Setup Screenshot 3"/>
</p>


## Included Configs

* **fastfetch** → `~/.config/fastfetch/`
* **i3** → `~/.config/i3/` (includes scripts: `color-picker.sh`, `power-menu`, `volume.sh`, `brightness.sh`)
* **kitty** → `~/.config/kitty/`
* **polybar** → `~/.config/polybar/`
* **rofi** → `~/.config/rofi/`
* **wallpapers** → `~/wallpapers/`
* **zshrc** → `~/.zshrc` (includes Powerlevel10k and Oh My Zsh customizations)

---

## Required Utilities

Ensure the following tools are installed:

| Utility                       | Purpose                                     |
| ----------------------------- | ------------------------------------------- |
| `stow`                        | Deploy dotfiles                             |
| `brightnessctl`               | Adjust screen brightness                    |
| `xcolor`                      | Color picker (`color-picker.sh`)            |
| `pactl`                       | Volume control (`volume.sh`)                |
| `feh`                         | Set wallpapers                              |
| `polybar`                     | Status bar                                  |
| `kitty`                       | Terminal                                    |
| `rofi`                        | Application menu / launcher                 |
| `flameshot`                   | Screenshots                                 |
| `copyq`                       | Clipboard manager                           |
| `fastfetch`                   | System info in terminal                     |
| `i3lock`                      | Lock screen (`Lock` in power menu)          |
| `pgrep` / `pkill`             | Safe app closing in power menu              |
| `systemctl`                   | Suspend, reboot, shutdown                   |
| `code`, `firefox`, `chromium` | Optional apps to safely close in power menu |

### Install on Arch Linux

```bash
sudo pacman -S stow brightnessctl xorg-xcolor pulseaudio feh kitty rofi flameshot copyq i3lock
yay -S polybar  # if not in official repo
sudo pacman -S code firefox chromium  # optional, for power menu safe-close
```

---

## Deployment with Stow

1. Clone the repository:

```bash
git clone https://github.com/satheem/dotfiles.git
```

2. Navigate to the dotfiles folder:

```bash
cd ~/dotfiles
```

3. Stow the configurations:

```bash
stow fastfetch i3 kitty polybar rofi wallpapers zshrc
```

* This creates symlinks in the correct locations.
* Editing any file inside `~/dotfiles` automatically updates your system configuration.

---

## i3 Keybindings and Scripts

### Window Management

| Action                                    | Keybinding                                   |
| ----------------------------------------- | -------------------------------------------- |
| Focus left / down / up / right            | `$mod+j/k/l/;` or `$mod+ArrowKeys`           |
| Move window left / down / up / right      | `$mod+Ctrl+j/k/l/;` or `$mod+Ctrl+ArrowKeys` |
| Resize window                             | `$mod+Shift+ArrowKeys` (50 px increments)    |
| Enter resize mode                         | `$mod+r`                                     |
| Split horizontally                        | `Mod1+h`                                     |
| Split vertically                          | `Mod1+v`                                     |
| Toggle fullscreen                         | `$mod+f`                                     |
| Change layout: stacked / tabbed / split   | `Mod1+s / Mod1+w / Mod1+e`                   |
| Toggle floating                           | `$mod+Shift+Space`                           |
| Toggle focus mode between tiling/floating | `$mod+Space`                                 |

### Workspaces

| Action                                   | Keybinding                        |
| ---------------------------------------- | --------------------------------- |
| Switch to workspace 1-10                 | `$mod+1` ... `$mod+0`             |
| Move window to workspace 1-10 and switch | `$mod+Shift+1` ... `$mod+Shift+0` |

### Applications

| App                      | Keybinding    |
| ------------------------ | ------------- |
| Terminal (kitty)         | `$mod+Return` |
| VSCode                   | `$mod+c`      |
| Chrome                   | `$mod+b`      |
| File Manager (Dolphin)   | `$mod+e`      |
| Rofi App Launcher        | `$mod+a`      |
| Color Picker             | `$mod+p`      |
| Clipboard (CopyQ toggle) | `$mod+v`      |

### Media and System Controls

| Action                     | Keybinding                                    |
| -------------------------- | --------------------------------------------- |
| Increase / Decrease Volume | `XF86AudioRaiseVolume / XF86AudioLowerVolume` |
| Mute / Unmute              | `XF86AudioMute`                               |
| Play / Pause               | `XF86AudioPlay`                               |
| Next / Previous Track      | `XF86AudioNext / XF86AudioPrev`               |
| Brightness Up / Down       | `XF86MonBrightnessUp / XF86MonBrightnessDown` |

### Screenshots

| Action                | Keybinding         |
| --------------------- | ------------------ |
| GUI selection         | `Print`            |
| Full screen           | `Shift+Print`      |
| Laptop screen only    | `$mod+Print`       |
| External monitor only | `$mod+Shift+Print` |

### Power Menu

| Action          | Keybinding    |
| --------------- | ------------- |
| Open Power Menu | `$mod+Escape` |

* Safe-close apps: `code`, `firefox`, `chromium`
* Lock uses `i3lock`
* Suspend / Reboot / Shutdown uses `systemctl`

### Scripts Location

| Script       | Path                                   |
| ------------ | -------------------------------------- |
| Volume       | `~/.config/i3/scripts/volume.sh`       |
| Brightness   | `~/.config/i3/scripts/brightness.sh`   |
| Color Picker | `~/.config/i3/scripts/color-picker.sh` |
| Power Menu   | `~/.config/i3/scripts/power-menu`      |
| Flameshot    | `~/.config/i3/scripts/flameshotS`      |

---

## Optional Extras

* `.oh-my-zsh/` → Backup full Zsh plugins and themes
* `.zplug/` → Pre-downloaded Zsh plugins (faster startup)
* Additional scripts or tools can be added to `~/.config/i3/scripts/` and stowed.
