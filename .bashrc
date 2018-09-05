# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
MAGENTA="\[\033[0;95m\]"
D_GREEN="\[\033[0;32m\]"
L_GREEN="\[\033[1;32m\]"
BLUE="\[\033[0;34m\]"
NO_COLOUR="\[\033[0m\]"

function git_branch() {
    # bail if no git
    if ! hash git 2> /dev/null ; then
        return
    fi
    # get the branch
    br=`git branch 2> /dev/null | grep -e "^*" | cut -d' ' -f2`
    if [[ ! $br ]] ; then
        return
    fi
    echo " $br"
}

# colour codes the git branch with:
# RED - if deleted files
# LIGHT GREEN - if untracked files
# DARK GREEN - if changes in staged or unstaged files
function git_status_colour() {
    ret=""
    st=`git status --porcelain 2> /dev/null`
    if [[ `echo $st | grep -e "^D"` ]] ; then
        echo -ne ${RED:2:10}
    elif [[ `echo $st | grep -e "^?"` ]] ; then
        echo -ne ${L_GREEN:2:10}
    elif [[ `echo $st | grep -e "^M"` ]] ; then
        echo -ne ${D_GREEN:2:10}
    elif [[ `echo $st | grep -e "^A"` ]] ; then
        echo -ne ${YELLOW:2:10}
    else
        echo -ne ${MAGENTA:2:10}
    fi
}

if [ "$color_prompt" = yes ]; then
    # this below will display a red $ when a command fails
    PROMPT_COMMAND='RET=$?;'
    COLORS=`tput colors`
    if [ "$COLORS" == "8" ]
    then
        RET_COLOR='$(if [[ $RET = 0 ]]; then echo -ne "\e[1;37m"; else echo -ne "\e[0;31m"; fi;)'
    else
        RET_COLOR='$(if [[ $RET = 0 ]]; then echo -ne "\e[1;34m"; else echo -ne "\e[0;31m"; fi;)'
    fi
    GIT_COLOR='$(git_status_colour)'
    PS1="\${debian_chroot:+($debian_chroot)}$L_GREEN\h $D_GREEN\u \[$RET_COLOR\]\w\[$(git_status_colour)\]\$(git_branch) ${NO_COLOUR}"
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w \$(git_branch) \$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -l --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
	alias ls='ls -lG'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# vi mode
set -o vi
export EDITOR=vi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append to history, not overwrite
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for SSH hostnames based on ~/.ssh/config
# ignoring wildcards
[[ -e "$HOME/.ssh/config" ]] && complete -o "default" \
    -o "nospace" \
    -W "$(grep "^Host" ~/.ssh/config | \
    grep -v "[?*]" | cut -d " " -f2 | \
    tr ' ' '\n')" scp sftp ssh

fortune

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# fzf + ag configuration
if [ `which fzf` ] && [ `which ag` ]; then
  export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
fi

export PATH="$HOME/.bin:$PATH"
export GOPATH="$HOME/w/go"

eval `ssh-agent -s`

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f ~/.env ]; then
    source ~/.env
fi

# GPG signing has troubles in git when using pinentry
# https://www.gnupg.org/(it)/documentation/manuals/gnupg/Common-Problems.html
export GPG_TTY=$(tty)
