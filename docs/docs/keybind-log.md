# Keybind & Keymap Log

Running log of all keybinds/shortcuts configured across the dev environment.

---

## Neovim

### General
| Bind | Action |
|------|--------|
| `<leader>` (Space) | Leader key |
| `<leader>w` | Save |
| `<leader>q` | Quit |
| `Ctrl-h/j/k/l` | Navigate splits |

### Telescope (find)
| Bind | Action |
|------|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>fh` | Help tags |
| `<leader>fr` | Recent files |
| `<leader>fs` | Grep word under cursor |

### Git (neogit / diffview / gitsigns)
| Bind | Action |
|------|--------|
| `<leader>gg` | Neogit: open |
| `<leader>gc` | Neogit: commit |
| `<leader>gp` | Neogit: push |
| `<leader>gl` | Neogit: log |
| `<leader>gd` | Diffview: open diff |
| `<leader>gh` | Diffview: file history |
| `]h` / `[h` | Next / prev git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hu` | Undo stage hunk |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line (full) |
| `<leader>tb` | Toggle line blame |
| `<leader>hd` | Diff this |

### LSP
| Bind | Action |
|------|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | References |
| `gi` | Implementation |
| `K` | Hover docs |
| `<leader>rn` | Rename |
| `<leader>ca` | Code action |
| `<leader>D` | Type definition |
| `[d` / `]d` | Prev / next diagnostic |
| `<leader>e` | Show diagnostic float |

### Completion (nvim-cmp)
| Bind | Action |
|------|--------|
| `Ctrl-Space` | Trigger completion |
| `Ctrl-e` | Abort completion |
| `CR` (Enter) | Confirm completion |
| `Tab / S-Tab` | Cycle completion items |
| `Ctrl-b / Ctrl-f` | Scroll docs |

### Assembly
| Bind | Action |
|------|--------|
| `<leader>ar` | Assemble + run in DOSBox-X |
| `<leader>ab` | Assemble only |

---

## tmux (prefix = Ctrl-a)

### Session / Window / Pane
| Bind | Action |
|------|--------|
| `prefix + \|` | Split pane horizontally |
| `prefix + -` | Split pane vertically |
| `prefix + h/j/k/l` | Navigate panes (vim-style) |
| `prefix + H/J/K/L` | Resize panes (repeatable) |
| `prefix + c` | New window (in current path) |
| `prefix + [` / `]` | Previous / next window |
| `prefix + r` | Reload tmux config |
| `prefix + F` (Shift-F) | Launch tmux-fzf |

### Copy mode (vi)
| Bind | Action |
|------|--------|
| `v` | Begin selection |
| `y` | Copy to clipboard (wl-copy) |
| `Ctrl-v` | Rectangle toggle |

---

## Hyprland (Super = mainMod)

### Apps
| Bind | Action |
|------|--------|
| `Super + Return` | Open Kitty terminal |
| `Super + D` | Open Wofi launcher |
| `Super + E` | Open Ranger (in Kitty) |
| `Super + B` | Open Firefox |

### Window Management
| Bind | Action |
|------|--------|
| `Super + Q` | Kill active window |
| `Super + Shift + Q` | Exit Hyprland |
| `Super + F` | Fullscreen |
| `Super + V` | Toggle floating |
| `Super + P` | Pseudo-tile |
| `Super + S` | Toggle split |

### Focus (vim-style)
| Bind | Action |
|------|--------|
| `Super + H/J/K/L` | Move focus left/down/up/right |
| `Super + Shift + H/J/K/L` | Move window left/down/up/right |
| `Super + Ctrl + H/J/K/L` | Resize window |

### Workspaces
| Bind | Action |
|------|--------|
| `Super + 1-9, 0` | Switch to workspace 1-10 |
| `Super + Shift + 1-9, 0` | Move window to workspace 1-10 |
| `Super + mouse scroll` | Scroll through workspaces |

### Mouse
| Bind | Action |
|------|--------|
| `Super + left click drag` | Move window |
| `Super + right click drag` | Resize window |

### Media / Hardware
| Bind | Action |
|------|--------|
| `XF86Audio{Raise,Lower}Volume` | Volume up/down |
| `XF86AudioMute` | Toggle mute |
| `XF86Audio{Play,Next,Prev}` | Media controls |
| `XF86MonBrightness{Up,Down}` | Brightness |

### Screenshot
| Bind | Action |
|------|--------|
| `Print` | Full screenshot |
| `Super + Print` | Region screenshot (slurp) |

---

## Zsh / Shell

### fzf
| Bind | Action |
|------|--------|
| `Ctrl-R` | Fuzzy search command history |
| `Ctrl-T` | Fuzzy find files |
| `Alt-C` | Fuzzy cd into directory |

### Aliases
| Alias | Expands To |
|-------|------------|
| `v` | `nvim` |
| `lg` | `lazygit` |
| `r` | `ranger` |
| `ls` | `eza --icons --group-directories-first` |
| `ll` | `eza -la --icons --group-directories-first --git` |
| `lt` | `eza -la --icons --tree --level=2` |
| `cat` | `bat --paging=never` |
| `grep` | `rg` |
| `find` | `fd` |
| `du` | `dust` |
| `ps` | `procs` |
| `top` | `btop` |
| `help` | `tldr` |
| `..` / `...` / `....` | cd up 1/2/3 levels |
| `zrc` | `nvim ~/.zshrc` |
| `src` | `source ~/.zshrc` |

### Kitty
| Bind | Action |
|------|--------|
| `Ctrl+Shift+C/V` | Copy / paste |
| `Ctrl+Shift+Equal/Minus` | Font size up / down |
| `Ctrl+Shift+Backspace` | Reset font size |
| `Ctrl+Shift+T/W` | New tab / close tab |
| `Ctrl+Shift+Right/Left` | Next / previous tab |
