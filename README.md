Clone this repo to your root directory (`~`). To use any dotfile here, use
symbolic links:

```shell
ln -s ~/dotfiles/.<dotfile> ~/.<dotfile>

# Example

ln -s ~/dotfiles/.vimrc ~/.vimrc
```

### New Mac...

```
  install neobundle - https://github.com/Shougo/neobundle.vim
  brew install neovim
  brew install wget
  brew install nvm
  pick a theme for iTerm2 (alien is good)
  install a monospaced code font with ligatures (FiraCode is good)
  brew install fzf
  brew install fd
  brew install ripgrep bat tree
```
## Set Up Neovim On New Machine

* Install [neovim via
  homebrew](https://github.com/neovim/homebrew-neovim#troubleshooting)
* Install [neobundle](https://github.com/Shougo/neobundle.vim)
* Set these symbolic links:

```shell
rm -rf ~/.config/nvim
ln -s ~/.vim ~/.config/nvim
ln -s ~/dotfiles/.vimrc ~/.vim/init.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.zsh_profile ~/.zshrc 

```
* Open `vim` and run `NeoBundleInstall`
* Open `nvim`


## Install Fira Code.
In the downloaded TTF folder:  
Select all font files  
Right click and select Open (alternatively Open With Font Book)  
Select "Install Font"  
