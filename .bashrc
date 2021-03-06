# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

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

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@h:\w\$ '
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
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi







export PATH="/home/sewook/rclone:$PATH"

PS1='\u:\W\$ '


# Copy the output of the command
alias c="xclip"
alias v="xclip -o"

#Copy the output to the clipboard
# (http://unix.stackexchange.com/questions/22494/copy-file-to-xclip-and-paste-to-firefox)
alias cv="xclip -selection clipboard"

# Make terminal color dark or light

alias dark="~/gnome-terminal-colors-solarized/set_dark.sh"
alias light="~/gnome-terminal-colors-solarized/set_light.sh"


# Execute knit compilation to html
# http://kbroman.org/knitr_knutshell/pages/Rmarkdown.html
# http://stackoverflow.com/questions/10646665/how-to-convert-r-markdown-to-html-i-e-what-does-knit-html-do-in-rstudio-0-9
knitr2html(){
	cmd='rmarkdown::render('"'$1'"')';
	# echo $cmd; }
	R -e $cmd
}


# Reset network
alias resetnetwork="sudo systemctl restart network-manager.service"




# Convert pdf to black and white
# https://superuser.com/questions/104656/convert-a-pdf-to-greyscale-on-the-command-line-in-floss
convertpdfblackandwhite(){
gs -sOutputFile=output.pdf -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 -dNOPAUSE -dBATCH "$1"
}




# Enable pypy to import python packages
# export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python2.7/dist-packages"


# added by Anaconda2 4.2.0 installer
PATH="/home/sewook/anaconda2/bin:$PATH"
# added by Anaconda3 installer
PATH="/home/sewook/anaconda3/bin:$PATH"
export PATH

# added by Anaconda2 4.2.0 installer
# PYTHONPATH="/usr/local/lib/python2.7/dist-packages:$PYTHONPATH"
# PYTHONPATH="/home/sewook/anaconda2/lib/python2.7/site-packages/:$PYTHONPATH"
# PYTHONPATH="/home/sewook/anaconda2/lib/site-python:$PYTHONPATH"
# FOR ADDING PACKAGE, go to /home/sewook/anaconda2/lib/python2.7/site-packages/ and add add_path.pth file, with the path of directory which you want to include for importing python packages.
# added by Anaconda3 installer
# PYTHONPATH="/usr/local/lib/python3.6/site-packages:$PYTHONPATH"
# PYTHONPATH="/home/sewook/anaconda3/lib/python3.6/site-packages/:$PYTHONPATH"
# FOR ADDING PACKAGE, go to /home/sewook/anaconda3/lib/python3.6/site-packages/ and add add_path.pth file, with the path of directory which you want to include for importing python packages.
# export PYTHONPATH
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH




# Add repo to Github
# Some advanced version can be found at: https://www.viget.com/articles/create-a-github-repo-from-the-command-line
github-create() {
 repo_name=$1
 echo -n "Creating Github repository '$repo_name' ..."
 curl -u swoh816 https://api.github.com/user/repos -d '{"name":"'$repo_name'"}'
 echo " done."
}


# Remove repo from Github
github-delete() {
 repo_name=$1
 echo -n "Deleting Github repository '$repo_name' ..."
 curl -u swoh816 -X "DELETE" https://api.github.com/repos/swoh816/"$repo_name"
 echo " done."
}



# 1THEFULL
#### ssh 1thefull platform
alias 1thefull-ssh="ssh -i ~/.ssh/rsa-gcp-key swoh@35.185.132.59"
#alias ssh-1thefull="ssh swoh@35.185.132.59"

#### Access to 1thefull sql
alias 1thefull-sql="mysql --host=35.201.169.147 --user=root --password=1thefull!"
#alias 1thefull-sql="mysql -h 35.201.169.147 -u root -p"
