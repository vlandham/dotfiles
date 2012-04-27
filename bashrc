
if [ -e /n/site/inst/shared/bash/init.sh ]; then
  source /n/site/inst/shared/bash/init.sh
fi


#COLOR1="\[\033[0;36m\]"
#COLOR2="\[\033[1;32m\]"
#COLOR3="\[\033[0;36m\]"
#COLOR4="\[\033[0;37m\]"
#COLOR5="\[\033[1;33m\]"
#LSCOLORS="DxGxFxdxCxdxdxhbadExEx"
#export CLICOLORS=1
#export LSCOLORS
export CLICOLOR=1;export LSCOLORS="cxfxexexDxexexDxDxcxcx";
#osx color terminal
#export CLICOLOR=1
# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='\[\033[01;31m\]\w\[\033[00m\]\n${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# dircolors... make sure that we have a color terminal, dircolors exists, and ls supports it.
#if $TERM_IS_COLOR && ( dircolors --help && ls --color ) &> /dev/null; then
  # For some reason, the unixs machines need me to use $HOME instead of ~
  # List files from highest priority to lowest.  As soon as the loop finds one that works, it will exit.
#  for POSSIBLE_DIR_COLORS in "$HOME/.dir_colors" "/etc/DIR_COLORS"; do
#    [[ -f "$POSSIBLE_DIR_COLORS" ]] && [[ -r "$POSSIBLE_DIR_COLORS" ]] && eval `dircolors -b "$POSSIBLE_DIR_COLORS"` && break
#  done

#  alias ls="ls --color=auto"
#  alias ll="ls --color=auto -l"
#  alias grep='grep --color=auto'
#  alias fgrep='fgrep --color=auto'
#  alias egrep='egrep --color=auto'
#else
  # No color, so put a slash at the end of directory names, etc. to differentiate.
#  alias ls="ls -F"
#  alias ll="ls -lF"
#fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PERL5LIB=/n/site/inst/shared/sys/lib/perl5/5.8.8:/n/site/inst/shared/sys/lib/perl5/site_perl/5.8.8/x86_64-linux-thread-multi:/n/site/inst/shared/sys/lib/perl5/site_perl/5.8.8:/n/site/inst/shared/sys/lib/perl5/site_perl:$PERL5LIB

#export JAVA_HOME=/usr/lib/jvm/java-1.6.0
#export ANT_HOME=~/tools/ant

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home 

export PATH="/usr/local/bin:$PATH"

export BB_INSTALL="/Users/jfv/local"
export BB_PATH="$BB_INSTALL/bin/bio.brew"
export PATH="$BB_INSTALL/bin:$BB_PATH/bin:$PATH"

[[ -s "$BB_PATH/bb_load_env" ]] && source "$BB_PATH/bb_load_env"


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

[[ -s "$HOME/.blertr/app/scripts/blertr" ]] && . "$HOME/.blertr/app/scripts/blertr"

#rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*
