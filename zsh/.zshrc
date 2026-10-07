# ── PATH ──────────────────────────────────────────
export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:/usr/local/bin:$PATH"

# ── Oh My Zsh ─────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""  # disabled — using Starship instead

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ── Environment ───────────────────────────────────
export EDITOR='nvim'
export VISUAL='nvim'
export LANG=en_US.UTF-8

# ── Starship prompt ───────────────────────────────
eval "$(starship init zsh)"

# ── fzf ───────────────────────────────────────────
source <(fzf --zsh)
export FZF_DEFAULT_OPTS='
  --height 40% --layout reverse --border rounded
  --color=bg+:#2D4F67,bg:#1F1F28,spinner:#FFA066,hl:#E6C384
  --color=fg:#DCD7BA,header:#7E9CD8,info:#957FB8,pointer:#E46876
  --color=marker:#98BB6C,fg+:#DCD7BA,prompt:#7E9CD8,hl+:#E6C384
'
# Use fd for fzf file search
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'

# ── zoxide (smart cd) ─────────────────────────────
eval "$(zoxide init zsh)"

# ── Aliases: Modern CLI replacements ──────────────
alias ls='eza --icons --group-directories-first'
alias ll='eza -la --icons --group-directories-first --git'
alias lt='eza -la --icons --tree --level=2'
alias cat='bat --paging=never'
alias grep='rg'
alias find='fd'
alias du='dust'
alias ps='procs'
alias top='btop'
alias help='tldr'

# ── Aliases: Shortcuts ────────────────────────────
alias v='nvim'
alias lg='lazygit'
alias r='yazi'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias zrc='nvim ~/.zshrc'
alias src='source ~/.zshrc'

# ── Safety ────────────────────────────────────────
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ── History ───────────────────────────────────────
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# ── Fastfetch on new shell ────────────────────────
if [[ -o interactive ]] && [[ -z "$TMUX" ]]; then
  fastfetch
fi

function qlide() {
	chmod +x ~/Coding_Projects/QuinLangIDE && ~/Coding_Projects/./QuinLangIDE
}

# pnpm
export PNPM_HOME='/home/nathan/.local/share/pnpm'
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
