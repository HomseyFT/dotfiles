#!/usr/bin/env bash
# Sets up a Fedora machine from this repo. Safe to re-run.
#   ./install.sh        install everything, then link configs
#   ./install.sh stow   only (re)link configs
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STOW_PACKAGES=(zsh kitty tmux nvim git fastfetch btop docs)
COPRS=(atim/lazygit)

install_packages() {
  for copr in "${COPRS[@]}"; do
    sudo dnf copr enable -y "$copr"
  done
  grep -vE '^\s*(#|$)' "$DOTFILES/packages.txt" | xargs sudo dnf install -y
}

install_extras() {
  if ! command -v starship >/dev/null; then
    curl -sS https://starship.rs/install.sh | sh -s -- -y
  fi

  if [[ ! -d ~/.oh-my-zsh ]]; then
    RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
  local omz_plugins=~/.oh-my-zsh/custom/plugins
  [[ -d $omz_plugins/zsh-autosuggestions ]] ||
    git clone https://github.com/zsh-users/zsh-autosuggestions "$omz_plugins/zsh-autosuggestions"
  [[ -d $omz_plugins/zsh-syntax-highlighting ]] ||
    git clone https://github.com/zsh-users/zsh-syntax-highlighting "$omz_plugins/zsh-syntax-highlighting"

  local tpm=~/.local/share/tmux/plugins/tpm
  [[ -d $tpm ]] || git clone https://github.com/tmux-plugins/tpm "$tpm"

  local font_dir=~/.local/share/fonts/JetBrainsMono
  if [[ ! -d $font_dir ]]; then
    local tmp
    tmp="$(mktemp -d)"
    curl -fsSL -o "$tmp/font.zip" \
      https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
    mkdir -p "$font_dir"
    unzip -q "$tmp/font.zip" -d "$font_dir"
    rm -rf "$tmp"
    fc-cache -f
  fi

  if [[ "$(getent passwd "$USER" | cut -d: -f7)" != "$(command -v zsh)" ]]; then
    chsh -s "$(command -v zsh)"
  fi
}

link_configs() {
  stow --dir="$DOTFILES" --target="$HOME" --restow "${STOW_PACKAGES[@]}"
}

case "${1:-all}" in
  all)
    install_packages
    install_extras
    link_configs
    ;;
  stow) link_configs ;;
  *)
    echo "usage: $0 [stow]" >&2
    exit 1
    ;;
esac
