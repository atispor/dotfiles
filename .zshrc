#!/usr/bin/env bash

# Prompt

export PS1="\W $ "

# Locale

export LC_ALL="en_US.UTF-8"
export LANG=$LC_ALL
export LANGUAGE=$LC_ALL

alias date="date +\"%Y-%m-%d %T\""

# Editor

export EDITOR=$(command -v vim)

#Aliases
alias bi="bundle install --path vendor/bundle"
alias df="df -h"
alias du="du -h"
alias ll="ls -hl"
alias tags="ctags --exclude=node_modules --recurse"
alias vi="vim"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"

# Operating System

export OS=$(uname -s)

if [ $OS = "Darwin" ]; then
  source "$HOME/.bashrc.darwin"
fi

if [ $OS = "Linux" ]; then
  source "$HOME/.bashrc.linux"
fi

# Ruby

if [ ! -z $CHRUBY -a -r $CHRUBY ]; then
  source $CHRUBY
fi

# Git

if [ ! -z $GIT_COMPLETION -a -r $GIT_COMPLETION ]; then
  source $GIT_COMPLETION
fi

if [ ! -z $GIT_PROMPT -a -r $GIT_PROMPT ]; then
  source $GIT_PROMPT
  export PS1="\W \$(__git_ps1 '(%s) ')λ "
fi

# GPG

export GPG_TTY=$(tty)

# Path

export PATH="$HOME/bin:$PATH"

# External

export BASHRC_HOST="$HOME/.bashrc.host"


if [ -r $BASHRC_HOST ]; then
  source $BASHRC_HOST
fi

# Auto jump -> https://github.com/wting/autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Theme 
ZSH_THEME="agnoster"
