echo "/ /\ / /\/"

export HISTCONTROL=erasedups
export EDITOR=nvim

source $HOME/dotfiles/bash/aliases.bash
source $HOME/dotfiles/bash/prompt.bash
source $HOME/dotfiles/bash/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Path for cargo (rust bundler...)

export PATH="$HOME/.cargo/bin:$PATH"
