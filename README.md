# dotfiles

My Fedora setup. Each top-level folder is a [GNU Stow](https://www.gnu.org/software/stow/)
package that mirrors `$HOME`, e.g. `kitty/.config/kitty/kitty.conf` → `~/.config/kitty/kitty.conf`.

## Install

```bash
git clone <this repo> ~/Coding_Projects/dotfiles
cd ~/Coding_Projects/dotfiles
./install.sh          # packages, extras, then symlinks
./install.sh stow     # symlinks only
```

- dnf packages: `packages.txt`
- Everything else (COPRs, starship, oh-my-zsh, tpm, Nerd Font): `install_extras` in `install.sh`
- Adding a new config: create `<app>/<path relative to ~>`, add `<app>` to `STOW_PACKAGES`, run `./install.sh stow`

## Docs

`docs/docs/` is stowed to `~/docs`:

- `keybind-log.md` — every keybind across the setup
- `package-log.md` — what's installed and why
