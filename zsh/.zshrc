# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

#Because VIM all the things!
bindkey -v

ZSH_THEME="flazz"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

export EDITOR=/usr/bin/vim

export PATH=$PATH:$FIREFOX
export PATH=$PATH:"~/.dotfiles/bin"

source $ZSH/oh-my-zsh.sh
source ~/code/gitup/gitup

#AutoJump (j)
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

#HomeBrews
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel

#VirtualEnvWrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel

#GO Stuff!
for file in ~/devtools/dotfile_scripts/*.sh; do source $file; done

#funcs
for file in ~/.dotfiles/bin/func/*.sh; do source $file; done

#Aliai
alias g=git
alias remotes='cd /Volumes'
alias scratch='vi ~/GoogleDrive/notes/scratch-$( date '+%Y-%m-%d_%H-%M-%S' ).txt'
