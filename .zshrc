# termux_sensible/zshrc
# Zsh configuration for new Termux installations

## Environment variables
export TERM=xterm-256color
export COLORTERM=truecolor

export EDITOR="nvim"
export MANPAGER="nvim +Man!"

export PATH="${HOME}/.local/bin:${HOME}/.cargo/bin:${PATH}"

## Antigen plugin manager
# Lazy-load antigen from local installation
source "${HOME}/antigen.zsh"

antigen bundle Aloxaf/fzf-tab
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jeffreytse/zsh-vi-mode

antigen apply

## Aliases
alias v="nvim"
alias ls="exa --icons --group-directories-first"
alias ll="exa --icons --group-directories-first -alh"
alias tree="exa --icons --group-directories-first --tree"
alias cat="bat"

## Shell integrations
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
