# Source all the system dotfiles, for combined shell usage

source "$HOME/.env"
source "$HOME/.path"
source "$HOME/.aliases"
source "$HOME/.functions"

# Source the private script if it exists
# This is for any private shell definitions that shouldn't be committed to Git
if [ -f $HOME/.private ]; then
  source "$HOME/.private"
fi
