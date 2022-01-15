## git
alias gitc="git commit -m "
alias gits="git status"
alias gitd="git diff"
alias gita="git add"
alias gitp="git push"

## ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

## exa
alias ls='exa'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# conda
conda deactivate
conda activate base

# encode
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

## bat
export BAT_THEME=GitHub

## starship
starship init fish | source
