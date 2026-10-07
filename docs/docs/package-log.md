# Package & Utility Log

Running log of every package/utility installed during the dev environment setup.

---

## Pre-existing
| Package | Function | Config Location |
|---------|----------|-----------------|
| neovim 0.11.5 | Text editor | `~/.config/nvim/` |
| tmux | Terminal multiplexer | `~/.config/tmux/tmux.conf` |
| git | Version control | `~/.gitconfig` |
| bash 5.2 | Previous default shell | `~/.bashrc` |
| ripgrep | Fast grep (pre-installed) | — |
| wl-clipboard | Wayland clipboard | — |

---

## Phase 1: Foundations

| Package | Function | Install Method | Config Location |
|---------|----------|----------------|-----------------|
| JetBrainsMono Nerd Font | Nerd Font for icons/ligatures | GitHub release → `~/.local/share/fonts/` | `~/.local/share/fonts/JetBrainsMono/` |
| zsh 5.9 | Shell | `dnf` | `~/.zshrc` |
| Oh My Zsh | Zsh framework | curl installer | `~/.oh-my-zsh/` |
| zsh-autosuggestions | Fish-like autocompletions | git clone to omz custom plugins | `~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/` |
| zsh-syntax-highlighting | Real-time command coloring | git clone to omz custom plugins | `~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/` |
| starship | Cross-shell prompt | curl installer → `/usr/local/bin/` | `~/.config/starship.toml` (default) |

## Phase 2: Terminal Emulator + Multiplexer

| Package | Function | Install Method | Config Location |
|---------|----------|----------------|-----------------|
| kitty 0.43.1 | GPU-accelerated terminal emulator | `dnf` | `~/.config/kitty/kitty.conf` |
| catppuccin-mocha (kitty) | Kitty color theme | curl download | `~/.config/kitty/catppuccin-mocha.conf` |
| tpm | tmux plugin manager | git clone | `~/.tmux/plugins/tpm/` |
| tmux-sensible | Sensible tmux defaults | tpm | `~/.tmux/plugins/tmux-sensible/` |
| tmux-resurrect | Save/restore tmux sessions | tpm | `~/.tmux/plugins/tmux-resurrect/` |
| tmux-yank | Clipboard integration for tmux | tpm | `~/.tmux/plugins/tmux-yank/` |
| catppuccin/tmux | Catppuccin theme for tmux | tpm | `~/.tmux/plugins/tmux/` |
| tmux-fzf | fzf integration for tmux | tpm | `~/.tmux/plugins/tmux-fzf/` |

## Phase 3: Fuzzy Finder + Modern CLI Tools

| Package | Function | Install Method | Config Location |
|---------|----------|----------------|-----------------|
| fzf 0.67.0 | Fuzzy finder | `dnf` | via `.zshrc` env vars |
| eza 0.23.4 | Modern `ls` replacement | `cargo install` | `~/.cargo/bin/eza` |
| bat 0.25.0 | Modern `cat` with syntax highlighting | `dnf` | — |
| fd-find 10.3.0 | Modern `find` replacement | `dnf` | — |
| zoxide 0.9.8 | Smart `cd` replacement | `dnf` | via `.zshrc` eval |
| git-delta 0.18.2 | Enhanced `git diff` viewer | `dnf` | `~/.gitconfig` |
| btop 1.4.6 | Modern system monitor | `dnf` | — |
| tealdeer 1.7.3 | Simplified man pages (`tldr`) | `dnf` | `~/.cache/tealdeer/` |
| du-dust 1.2.4 | Modern `du` replacement | `dnf` | — |
| procs 0.14.10 | Modern `ps` replacement | `dnf` | — |

## Phase 4: Neovim Plugin Expansion

| Plugin | Function | Config Location |
|--------|----------|-----------------|
| neogit | Buffer-based Git UI | `~/.config/nvim/lua/plugins/neogit.lua` |
| diffview.nvim | Git diff viewer | `~/.config/nvim/lua/plugins/neogit.lua` |
| which-key.nvim | Keybinding discovery popup | `~/.config/nvim/lua/plugins/which-key.lua` |
| mason.nvim | LSP/tool installer | `~/.config/nvim/lua/plugins/mason.lua` |
| mason-lspconfig.nvim | Auto-configure LSP servers | `~/.config/nvim/lua/plugins/mason.lua` |
| gitsigns.nvim | Inline git blame/hunks | `~/.config/nvim/lua/plugins/gitsigns.lua` |
| lualine.nvim | Statusline | `~/.config/nvim/lua/plugins/lualine.lua` |
| nvim-autopairs | Auto-close brackets/quotes | `~/.config/nvim/lua/plugins/autopairs.lua` |
| indent-blankline.nvim | Indent guides | `~/.config/nvim/lua/plugins/indent.lua` |

## Phase 5: Hyprland + Desktop Ricing

| Package | Function | Install Method | Config Location |
|---------|----------|----------------|-----------------|
| hyprland | Wayland tiling compositor | `dnf` | `~/.config/hypr/hyprland.conf` |
| waybar | Status bar | `dnf` | `~/.config/waybar/config.jsonc`, `style.css` |
| wofi | App launcher | `dnf` | `~/.config/wofi/style.css` |
| swaybg | Wallpaper setter | `dnf` | via hyprland.conf exec-once |
| dunst | Notification daemon | `dnf` | `~/.config/dunst/` (defaults) |
| grim | Screenshot tool | `dnf` | — |
| slurp | Region selector for screenshots | `dnf` | — |
| brightnessctl | Backlight control | `dnf` | — |
| pamixer | PulseAudio volume control | `dnf` | — |
| playerctl | Media player control | `dnf` | — |

## Phase 6: Remaining Tools

| Package | Function | Install Method | Config Location |
|---------|----------|----------------|-----------------|
| ranger 1.9.4 | TUI file manager | `dnf` | `~/.config/ranger/rc.conf` |
| lazygit 0.47.2 | TUI git client | `dnf` (COPR: atim/lazygit) | — |
| fastfetch 2.44.0 | System info display | `dnf` | `~/.config/fastfetch/config.jsonc` |
| ollama | Local AI / LLM runner | curl installer | systemd service, API at 127.0.0.1:11434 |
| stow 2.4.1 | Dotfile symlink manager | `dnf` | — |
| cargo/rust 1.93.1 | Rust toolchain (for eza) | `dnf` | — |
