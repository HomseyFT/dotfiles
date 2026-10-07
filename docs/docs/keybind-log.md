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

## Niri (Super = Mod)

`Super + Shift + /` shows all binds on screen. Config: `niri/.config/niri/config.kdl`.

### Apps
| Bind | Action |
|------|--------|
| `Super + Return` | Open Kitty terminal |
| `Super + D` | Open fuzzel launcher |
| `Super + E` | Open yazi (in Kitty) |
| `Super + B` | Open Firefox |
| `Super + Shift + V` | Clipboard history (clipman + fuzzel) |
| `Super + Escape` | Lock screen |

### Window Management
| Bind | Action |
|------|--------|
| `Super + Q` | Close window |
| `Super + Shift + Q` | Exit Niri |
| `Super + F` | Maximize column (toggle full width) |
| `Super + Shift + F` | Fullscreen |
| `Super + V` | Toggle floating |
| `Super + Alt + V` | Switch focus between floating / tiled |
| `Super + R` / `Super + Shift + R` | Cycle column width (1/3, 1/2, 2/3, full) |
| `Super + S` | Toggle tabbed column |
| `Super + [` / `]` | Pull window into / push out of column |
| `Super + C` | Center column |
| `Super + O` | Overview |
| `Super + Shift + Escape` | Toggle shortcut inhibit (for VMs / remote desktop) |

### Focus (vim-style)
| Bind | Action |
|------|--------|
| `Super + H/L` | Focus column left/right |
| `Super + J/K` | Focus window down/up in column, then next/prev workspace |
| `Super + Shift + H/L` | Move column left/right |
| `Super + Shift + J/K` | Move window down/up, then to next/prev workspace |
| `Super + Ctrl + H/L` | Column width -/+ 10% |
| `Super + Ctrl + J/K` | Window height +/- 10% |

### Workspaces
| Bind | Action |
|------|--------|
| `Super + 1-9, 0` | Switch to workspace 1-10 |
| `Super + Shift + 1-9, 0` | Move column to workspace 1-10 |
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
Saved to `~/Pictures/Screenshots/` and copied to clipboard.

| Bind | Action |
|------|--------|
| `Print` | Region screenshot (drag, then Space) |
| `Super + Print` | Full screenshot |
| `Alt + Print` | Window screenshot |

### Idle (swayidle)
| After | Action |
|-------|--------|
| 5 min | Lock |
| 7 min | Screens off |
| 15 min | Suspend (battery only) |
| Lid close / sleep | Lock first |

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
| `r` | `yazi` |
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
