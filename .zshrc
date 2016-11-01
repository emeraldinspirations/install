# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/emeraldinspirations/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

ZSH=$HOME/Install/zsh/oh-my-zsh

ZSH_THEME="random"
