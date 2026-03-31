export EDITOR="nvim"
export MANPAGER="nvim +Man!"

alias cat="bat"
alias v="nvim"
alias ls="exa --icons --group-directories-first"
alias ll="exa --icons --group-directories-first -alh"
alias tree="exa --icons --group-directories-first --tree"

source "${HOME}/.local/bin/antigen.zsh"

antigen bundle Aloxaf/fzf-tab
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle jeffreytse/zsh-vi-mode

antigen apply

eval "$(starship init zsh)"
eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"
