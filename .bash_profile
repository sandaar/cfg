[[ -s ~/.bashrc ]] && source ~/.bashrc
export M2_HOME=/usr/local/Cellar/maven/3.5.0/libexec

##
# Your previous /Users/victoria/.bash_profile file was backed up as /Users/victoria/.bash_profile.macports-saved_2017-10-03_at_10:51:26
##

# MacPorts Installer addition on 2017-10-03_at_10:51:26: adding an appropriate PATH variable for use with MacPorts.
export PATH="/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=/Users/victoria/Library/Python/3.6/bin/:$PATH
export PATH=/usr/local/Cellar/vim/8.0.1250/bin/:/Users/victoria/scripts:$PATH
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_OPTIONS='--color=always'

### Aliases

# Open specified files in Sublime Text
# "s ." will open the current directory in Sublime
alias subl='open -a "Sublime Text"'
alias sshls='cat ~/.ssh/config | grep'

### Prompt Colors
# Modified version of @gf3’s Sexy Bash Prompt
# (https://github.com/gf3/dotfiles)
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
	tput sgr0
	if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
		MAGENTA=$(tput setaf 9)
		ORANGE=$(tput setaf 172)
		GREEN=$(tput setaf 190)
		PURPLE=$(tput setaf 141)
	else
		MAGENTA=$(tput setaf 5)
		ORANGE=$(tput setaf 4)
		GREEN=$(tput setaf 2)
		PURPLE=$(tput setaf 1)
	fi
	BOLD=$(tput bold)
	RESET=$(tput sgr0)
else
	MAGENTA="\033[1;31m"
	ORANGE="\033[1;33m"
	GREEN="\033[1;32m"
	PURPLE="\033[1;35m"
	BOLD=""
	RESET="\033[m"
fi

export MAGENTA
export ORANGE
export GREEN
export PURPLE
export BOLD
export RESET

# Change this symbol to something sweet.
# (http://en.wikipedia.org/wiki/Unicode_symbols)
symbol="👁  "

export PS1="\[${MAGENTA}\]\u \[$RESET\]in \[$GREEN\]\w\[$RESET\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$RESET\]\n$symbol\[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"
export HISTTIMEFORMAT="%d/%m/%y %T "

alias pt=papertrail

# FZF
export FZF_DEFAULT_OPTS='--height 40% --border'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
bind -x '"\C-p": vim $(fzf);'
# study
export STUDY="$HOME/Documents/personal/study"
alias study='cd $STUDY'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
