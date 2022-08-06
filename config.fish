## git
alias gitc="git commit -m "
alias gits="git status"
alias gitd="git diff"
alias gita="git add"
alias gitp="git push"

## ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -F'

## exa
alias ls='exa'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# encode
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

## bat
export BAT_THEME=GitHub

## functions
function rep
    rg --no-heading -n $argv | sed 's/:[0-9]\+:/& /g'
end

## starship
starship init fish | source
