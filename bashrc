#####################################
#
# Minimal bashrc by norea
#
# User specific aliases and functions

if [ -f ~/.bash_aliases ]; then
	    . ~/.bash_aliases
fi

# show branch in promt
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# promt
export PS1="[\[\033[219m\]\w]\[\033[0m\]\n\[\033[219m\]\u\[\033[219m\]-> \[\033[0m\]\$(git_branch)"

# default editor
export EDITOR=vim

# bin directory for user scripts
export PATH="$PATH:$HOME/.bin"

# ls color
alias ls='ls --color=auto'
LS_COLORS=$LS_COLORS:'di=37:' ; export LS_COLORS

