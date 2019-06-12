alias rebash="source ~/.bash_profile"

# shell commands
alias grepd="grep -Rin --exclude-dir={node_modules,.git} --color"

# Frequent Projects
alias bashpro="nvim ~/dotfiles/.bash_profile"
alias vimrc="nvim ~/dotfiles/.vimrc"
alias dotfiles="cd ~/dotfiles"

# Chrome shortcuts
alias unsafe_chrome="open -a Google\ Chrome --args --disable-web-security --user-data-dir"

# Git aliases
alias g="git"
alias gs="git status"
alias ga="git add"
alias gd="git diff --patience --ignore-space-change"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gc="git commit"
alias gb="git branch"
alias glog='git log --graph --pretty="%Cgreen%h%Creset%Cblue%d%Creset %Cred%an%Creset: %s"'
alias gfet='git fetch'
alias grebase='git rebase HEAD -i ~'
alias gpush='git push'
alias gp='git push'
alias gremote='git remote'

# fancy ls command
# -l  long format
# -F  / after dirs, * after exe, @ after symlink
# -G  colorize
# -g suppress owner
# -o suppress group
# -h humanize sizes
# -q print nongraphic chars as question marks
alias l="ls -lFGgohq"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'
