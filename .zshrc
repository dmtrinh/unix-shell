# Determine operating system
unameOut="$(uname -s)"
case "${unameOut}" in
Linux*)     
    OS=Linux
    ;;
Darwin*)
    OS=Mac
    ;;
CYGWIN*|MINGW32*|MSYS*|MINGW*)
    OS=Windows
    ;;
*)
    OS="UNKNOWN:${unameOut}"
    ;;
esac

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

case "$OS" in
Linux)     
    # enable color support of ls and also add handy aliases
    if [ -x /usr/bin/dircolors ]; then
        test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
        alias ls='ls --color=auto'
        #alias dir='dir --color=auto'
        #alias vdir='vdir --color=auto'

        alias grep='grep --color=auto'
        alias fgrep='fgrep --color=auto'
        alias egrep='egrep --color=auto'
    fi
    ;;
Mac)
    export CLICOLOR=1
    #export LSCOLORS=ExFxBxDxCxegedabagacad
    export LSCOLORS=GxFxCxDxBxegedabagaced 
    ;;
esac

NEWLINE=$'\n'
export PS1="%B%F{green}---------- %* (%n@%m) %~ ----------${NEWLINE}==> "

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
