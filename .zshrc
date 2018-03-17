### WHICH SHELL?
#
# Change default shell with these two commands:
# which zsh
# chsh -s /bin/zsh
#
# or
#
# chsh -s `which zsh`





### IMPORTING LOCAL STUFF 
#
# Sets the username for paths and other stuff
source ~/.zenv-variables






### PATH
#
# If you come from bash you might have to change your $PATH.
export PATH="/usr/local/bin:$HOME/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Putting Node first in the path
export PATH="/usr/local/opt/node@6/bin:$PATH"

# Node
export NODE_PATH="/usr/local/lib/node_modules"

# MacPorts Installer addition on 2017-06-12_at_05:25:22: adding an appropriate PATH variable for use with MacPorts. This may be necessary...
# export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.





### USERNAME-LINE IN THE TERMINAL
#
# Good post: http://stackoverflow.com/questions/26554713/how-to-truncate-working-directory-in-prompt-to-show-first-and-last-folder
#
# Alternative 1 - SUPER-advance-solution. Setting it to take up 30% (n=0.3) of the terminal-width.
export PS1='$(pwd|awk -F/ -v "n=$(tput cols)" -v "h=^$HOME" '\''{sub(h,"~");n=0.3*n;b=$1"/"$2} length($0)<=n || NF==3 {print;next;} NF>3{b=b"/../"; e=$NF; n-=length(b $NF); for (i=NF-1;i>3 && n>length(e)+1;i--) e=$i"/"e;} {print b e;}'\'') \$ '

# Alternative 2 - Shows the first directory and the last directories:
# export PS1='$(pwd | sed -E -e "s|^$HOME|~|" -e '\''s|^([^/]*/[^/]*/).*(/[^/]*)|\1..\2|'\'') \$ '

# Alternative 3 - Hide username from Terminal-lines (Simple)
# export PS1="\W \$"







### TAB COMPLETE
#
# How to make insensitive: https://askubuntu.com/questions/87061/can-i-make-tab-auto-completion-case-insensitive-in-the-terminal

# Step 1: If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it...
# if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Step 2: Add option to ~/.inputrc to enable case-insensitive tab completion
# echo 'set completion-ignore-case On' >> ~/.inputrc





### ZSH 
#
# Set the theme
ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="robbyrussell"

# Powerlevel9k config (got from Johan)
POWERLEVEL9K_DISABLE_RPROMPT="false"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2


# Host: machine (where am I)
# set_default POWERLEVEL9K_HOST_TEMPLATE "%m" # THIS GAVE AN ERROR
prompt_host() {
  local current_state="LOCAL"
  typeset -AH host_state
  if [[ -n "$SSH_CLIENT" ]] || [[ -n "$SSH_TTY" ]]; then
    host_state=(
      "STATE"               "REMOTE"
      "CONTENT"             "${POWERLEVEL9K_HOST_TEMPLATE}"
      "BACKGROUND_COLOR"    "${DEFAULT_COLOR}"
      "FOREGROUND_COLOR"    "yellow"
      "VISUAL_IDENTIFIER"   "SSH_ICON"
    )
  else
    host_state=(
      "STATE"               "LOCAL"
      "CONTENT"             "${POWERLEVEL9K_HOST_TEMPLATE}"
      "BACKGROUND_COLOR"    "${DEFAULT_COLOR}"
      "FOREGROUND_COLOR"    "011"
      "VISUAL_IDENTIFIER"   "HOST_ICON"
    )
  fi
  "$1_prompt_segment" "$0_${host_state[STATE]}" "$2" "${host_state[BACKGROUND_COLOR]}" "${host_state[FOREGROUND_COLOR]}" "${host_state[CONTENT]}" "${host_state[VISUAL_IDENTIFIER]}"
}


if [[ -n "$SSH_CLIENT" ]] || [[ -n "$SSH_TTY" ]]; then
	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context vcs dir status)
else
	POWERLEVEL9K_HOST_TEMPLATE="%1m"
	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host vcs dir status)
fi

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

# Enabling a git-plugin, I assume.
plugins=(git)

# Path to your oh-my-zsh installation.
export ZSH=${ZUSERHOMEDIR}/.oh-my-zsh

# I don't know why this has to be sourced... Hmm...
source $ZSH/oh-my-zsh.sh











### LSCOLORS
#
# Good site: https://geoff.greer.fm/lscolors/
#
# Default setup
# export LSCOLORS="Gxfxcxdxbxegedabagacad"
#
export LSCOLORS="ExFxCxDxDxegedabagacad"





### ALIASES
#
# Git
alias gs="git status"
alias gl="git log"
alias gaa="git add ."
alias gc="git commit -m "
alias gp="git push"
alias nah="git reset --hard && git clean -df"

# Python3
alias py=python3

# Sweet folder-navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"





### DOTFILE-SETUP
#
alias config="/usr/bin/git --git-dir=${ZUSERHOMEDIR}/.zcfg/ --work-tree=${ZUSERHOMEDIR}"
