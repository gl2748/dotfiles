echo "/ /\ / /\/"

export HISTCONTROL=erasedups
export EDITOR=nvim
# Requires nvm installed with: brew install nvm
# And ~/.nvm dir created in user dir.
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

source $HOME/dotfiles/bash/aliases.bash
source $HOME/dotfiles/bash/prompt.bash
source $HOME/dotfiles/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
