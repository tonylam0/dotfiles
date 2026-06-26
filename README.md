# dotfiles

Personal macOS dotfiles for a keyboard-driven setup centered around `yabai`, `skhd`, `kitty`, `nvim`, and terminal-first tools.

## What's in this repo

- `yabai/` - window manager config (`.yabairc`)
- `skhd/` - hotkey config (`.skhdrc`)
- `kitty/` - terminal config and themes
- `nvim/` - LazyVim-based Neovim setup
- `yazi/` - file manager config + plugins
- `rmpc/` - MPD TUI client config + themes
- `btop/` - system monitor config + themes
- `firefox/` - `userChrome.css` styling
- `simple-bar/` - status bar widget for Ubersicht
- `latex_template/` - LaTeX starter template
- `wallpapers/` - background images

## Prerequisites

This setup is primarily for macOS.

Recommended tools/apps:

- [brew](https://brew.sh/)
- [yabai](https://github.com/asmvik/yabai)
- [skhd](https://github.com/asmvik/skhd)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [neovim](https://neovim.io/)
- [yazi](https://yazi-rs.github.io/)
- [btop](https://github.com/aristocratos/btop)
- [mpd](https://www.musicpd.org/) + [mpc](https://www.musicpd.org/clients/mpc/) (used by [rmpc](https://github.com/mierak/rmpc) and some keybindings)
- [simple-bar](https://www.jeantinland.com/toolbox/simple-bar/) (needs [Ubersicht](https://tracesof.net/uebersicht/))

## Install

Clone the repo:

```bash
git clone https://github.com/tonylam0/dotfiles.git "$HOME/dotfiles"
cd "$HOME/dotfiles"
```

Create symlinks into `~/.config` (and other expected paths):

```bash
mkdir -p "$HOME/.config"

ln -sfn "$HOME/dotfiles/yabai/.yabairc" "$HOME/.yabairc"
ln -sfn "$HOME/dotfiles/skhd/.skhdrc" "$HOME/.skhdrc"
ln -sfn "$HOME/dotfiles/kitty" "$HOME/.config/kitty"
ln -sfn "$HOME/dotfiles/nvim" "$HOME/.config/nvim"
ln -sfn "$HOME/dotfiles/yazi" "$HOME/.config/yazi"
ln -sfn "$HOME/dotfiles/rmpc" "$HOME/.config/rmpc"
ln -sfn "$HOME/dotfiles/btop" "$HOME/.config/btop"
```

Optional:

- Firefox styling: copy/symlink `firefox/userChrome.css` into your Firefox profile's `chrome/` directory.
- Ubersicht widget: point Ubersicht widgets folder at `simple-bar/`.

