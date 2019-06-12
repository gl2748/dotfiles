export PROMPT_COMMAND="my_custom_function; $PROMPT_COMMAND"

# Prompt
  function parse_git_branch {
    branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
    if [ "HEAD" = "$branch" ]; then
      echo "(no branch)"
    else
      echo "$branch"
    fi
  }

  function prompt_segment {
    # for colours: http://en.wikipedia.org/wiki/ANSI_escape_code#Colors
    # change the 37 to change the foreground
    # change the 45 to change the background
    if [[ ! -z "$1" ]]; then
      echo "\[\033[${2:-32};49m\]${1}\[\033[0m\]"
    fi
  }

  function iain_was_here {
    # cwd
    ps1="$(prompt_segment "\W")"

    git_branch=`parse_git_branch`
    if [[ ! -z "$git_branch" ]]
    then
      ps1="${ps1} ∆|• $(prompt_segment "$git_branch " 94)🦉"
    fi

    emojis=( 🐸 🏺 👺)
    emoji='`echo ${emojis[$RANDOM % 3]}`'

    ps1="${ps1}\n${emoji} "

    PS1="$ps1"
  }

  PROMPT_COMMAND='iain_was_here'
