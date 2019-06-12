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
```
* Open `vim` and run `NeoBundleInstall`
* Open `nvim`
