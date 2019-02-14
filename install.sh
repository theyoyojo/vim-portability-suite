#!/bin/bash
# install.sh v1 created 21 January 2019 
# By Joel Savitz <joelsavitz@gmail.com>
#
# Purpose: Install vim configuration on an arbitrary linux machine

VERSION=1
SUCCESS=0
E_INCORRECT_USAGE=1

usage() {
	echo "Usage: `basename $0`"
	exit $E_INCORRECT_USAGE
}
# add option to open new file in vim?

hello_there() {
	printf "Hello there, user. I am  `basename $0` v%s\n" $VERSION
}


#  Copy the old .vimrc to a backup file if it exists
if [[ -f "$HOME/.vimrc" ]]
then
  echo "Copying existing file $HOME/.vimrc to backup file..."
  # Give the the backup file a unique name based on the date and time
  mv "$HOME/.vimrc" "$HOME/.vimrc.`date +%F-%T`.bak"
else
  echo "No existing .vimrc found"
fi

# Copy the .vimrc in the current directory to the user's home directory
echo "Copying over new .vimrc..."
cp "`dirname "${BASH_SOURCE[0]}"`/.vimrc" "$HOME/.vimrc"

# Make the background transparent after plugins are loaded
if [ ! -d "$HOME/.vim/after/plugin" ]
then
	mkdir -p "$HOME/.vim/after/plugin"
fi

echo "Adding post-plugin activation of transparent background..."
echo "hi Normal guibg=NONE ctermbg=NONE" > "$HOME/.vim/after/plugin/transparent.vim"

exit $SUCCESS
