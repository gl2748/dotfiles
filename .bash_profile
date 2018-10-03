echo "Hello, / /\ / /\/"

export HISTCONTROL=erasedups
export EDITOR=nvim
# Requires nvm installed with: brew install nvm
# And ~/.nvm dir created in user dir.
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

source $HOME/dotfiles/bash/aliases.bash
source $HOME/dotfiles/bash/prompt.bash
source $HOME/dotfiles/bash/prompt.bash
source $HOME/dotfiles/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ 

#flutter
export PATH="$HOME/Projects/flutter/flutter/bin:$PATH"
