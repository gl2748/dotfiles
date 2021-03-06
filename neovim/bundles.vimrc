if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Tim Pope
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-rhubarb.git'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround.git'

" Languages / Syntax
NeoBundle 'ElmCast/elm-vim'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'elixir-editors/vim-elixir'
NeoBundle 'fatih/vim-go'
NeoBundle 'groenewege/vim-less'
NeoBundle 'guns/vim-sexp'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'rhysd/vim-crystal'
NeoBundle 'shime/vim-livedown'
NeoBundle 'slashmili/alchemist.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'styled-components/vim-styled-components'
NeoBundle 'tomlion/vim-solidity'
NeoBundle 'wellle/targets.vim'
NeoBundle 'rust-lang/rust.vim'

" Tools
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'pbrisbin/vim-mkdir'
NeoBundle 'sbdchd/neoformat'
NeoBundle 'mattn/webapi-vim'  
NeoBundle 'mattn/gist-vim'
NeoBundle 'editorconfig/editorconfig-vim'

" Colors
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'chrisbra/Colorizer'
NeoBundle 'arcticicestudio/nord-vim'
NeoBundle 'dracula/vim'

" Auto Completion
NeoBundle 'racer-rust/vim-racer'

" Fuzzy Search
NeoBundle 'junegunn/fzf'

call neobundle#end()

NeoBundleCheck
