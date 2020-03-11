source $HOME/dotfiles/neovim/bundles.vimrc

" allow project specific .vimrc
set exrc
set secure

imap jj <Esc>

" hybrid line numbers - both absolute and relative
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Enable fzf, you must have installed fzf using homebrew for this to work
set rtp+=/usr/local/opt/fzf

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
