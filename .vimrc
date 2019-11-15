source $HOME/dotfiles/neovim/bundles.vimrc

" allow project specific .vimrc
set exrc
set secure

imap jj <Esc>

" Enable fzf, you must have installed fzf using homebrew for this to work
set rtp+=/usr/local/opt/fzf
