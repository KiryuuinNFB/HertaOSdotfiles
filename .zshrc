# Created by newuser for 5.9.2
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

[[ $- != *i* ]] && return

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

autoload -Uz compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

eval "$(zoxide init --cmd cd zsh)"

alias py='python'
alias ls='ls --color'
alias grep='grep --color'
PS1='[\u@\h \W]\$ '
kitty-reload() {
    kill -SIGUSR1 $(pidof kitty)
}

export BUN_INSTALL="/home/Kiryuuin/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.config/hertaos/bin:$PATH"

eval "$(starship init zsh)"
fastfetch
