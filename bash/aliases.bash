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

# fzf functions.
fzf_find_edit() {
    local file=$(
      fzf --no-multi --preview 'bat --color=always --line-range :500 {}'
      )
    if [[ -n $file ]]; then
        $EDITOR $file
    fi
}

alias ffe='fzf_find_edit'

fzf_grep_edit(){
    if [[ $# == 0 ]]; then
        echo 'Error: search term was not provided.'
        return
    fi
    local match=$(
      rg --color=never --line-number "$1" |
        fzf --no-multi --delimiter : \
            --preview "bat --color=always --line-range {2}: {1}"
      )
    local file=$(echo "$match" | cut -d':' -f1)
    if [[ -n $file ]]; then
        $EDITOR $file +$(echo "$match" | cut -d':' -f2)
    fi
}

alias fge='fzf_grep_edit'

fzf_kill() {
    local pids=$(
      ps -f -u $USER | sed 1d | fzf --multi | tr -s [:blank:] | cut -d' ' -f2
      )
    if [[ -n $pids ]]; then
        echo "$pids" | xargs kill -9 "$@"
    fi
}

alias fkill='fzf_kill'


# using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
fzf_if() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

alias fif='fzf_if'

alias blender='/Applications/Blender.app/Contents/MacOS/Blender'
