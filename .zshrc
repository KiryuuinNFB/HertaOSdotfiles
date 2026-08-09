# Created by newuser for 5.9.2

[[ $- != *i* ]] && return


alias py='python'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
kitty-reload() {
    kill -SIGUSR1 $(pidof kitty)
}

export BUN_INSTALL="/home/Kiryuuin/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"
fastfetch
