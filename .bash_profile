# Add '~/bin' to '$PATH'
export PATH="$HOME/bin:$PATH";

# Load shell dotfiles
# * ~/.path can be used to extend $PATH
# * ~/.extra can be used for things you don't want to commit
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case insensitive globbing
shopt -s nocaseglob;

# Append to bash history file
shopt -s histappend;

# Autocorrect typos in path names when using 'cd'
shopt -s cdspell;

# Enable Bash 4 features when possible
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null;
done;

if [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi;

# Enable tab completion for 'g' by marking as an alias for git
if type _git &> /dev/null; then
  complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

