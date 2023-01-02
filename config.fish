# git
if type -q git
    abbr -a gitc 'git commit -s -m'
    abbr -a gits 'git status'
    abbr -a gitd 'git diff'
    abbr -a gita 'git add'
    abbr -a gitp 'git push'
    abbr -a gitn 'git checkout -b'
    abbr -a gitup 'git fetch upstream && git merge upstream/main'
end

# encode
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# bat
if type -q bat
    export BAT_THEME=GitHub
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    export MANROFFOPT="-c"
    abbr -a show 'bat --show-all'
end

# abbr:exa
if type -q exa
    abbr -a l 'exa'
    abbr -a ls 'exa'
    abbr -a ll 'exa -l'
    abbr -a lla 'exa -la'
    abbr -a lt 'exa --tree'
else
    abbr -a l 'ls'
    abbr -a ll 'ls -l'
    abbr -a lla 'ls -la'
    abbr -a lt 'ls --tree'
end

# abbr:docker
if type -q docker
    abbr -a dp 'docker ps'
    abbr -a di 'docker images'
end

# abbr:kubectl
if type -q kubectl
    abbr -a kc 'kubectl'
end

# colored man output
# from http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

## functions
function rrg -d "make sure `rg` result can jump to the match line in VSCode terminal"
    # TODO: color support (--color always)
    rg --no-heading -n $argv | sed 's/:[0-9]\+:/& /'
end

if type -q bat
    function hp -d "highlight help messages with `bat`"
        argparse --min-args 1 'h/help' -- $argv
        or return
        $argv --help 2>&1 | bat --plain --language=help
    end
end

# starship (this has to be placed at the end of this file)
if type -q starship
    starship init fish | source
end
