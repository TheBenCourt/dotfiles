#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")";

# Double check we're on latest
git pull origin master;

function doIt() {
  rsync --exclude ".git/" \
	  --exclude ".DS_Store" \
	  --exclude "setup.sh" \
	  --exclude "README.md" \
	  -avh --no-perms . ~;
  source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;

unset doIt;
