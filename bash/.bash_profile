export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=1
alias ?=pwd

source ~/.profile


sublime_command="/usr/local/bin/subl"
sublime_location="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"

#JAVA_HOME fix on OSX
export JAVA_HOME=$(/usr/libexec/java_home)

if [ ! -L "$sublime_command" ]
then
	ln -s "$sublime_location" "$sublime_command"
fi

export EDITOR=/usr/bin/vim

#/usr/local/bin comes first for homebrew
PATH=/usr/local/bin:$PATH

export DOT_FILE_DIR=$HOME/.dotfiles

#Z
. `brew --prefix`/etc/profile.d/z.sh
