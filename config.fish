# add to $PATH
for p in /usr/local/bin $HOME/.local/bin $HOME/.pixi/bin $HOME/.nvim/bin $HOME/.cargo/bin
    if test -d $p
        fish_add_path --append $p
    end
end

# merge fish history across sessions
abbr -a hr 'history --merge'

# git
if type -q git
    abbr -a gitc 'git commit -s'
    abbr -a gitcc 'git commit -s -t .git/COMMIT_EDITMSG'
    abbr -a gits 'git status'
    abbr -a gitd 'git diff'
    abbr -a gita 'git add'
    abbr -a gitp 'git push'
    abbr -a gitm 'git switch main'
    abbr -a gitn 'git switch -c'
    abbr -a gitup 'git fetch upstream && git merge upstream/main'
end

# encode
export LANG=C.UTF-8
export LC_ALL=C.UTF-8

# bat
if type -q bat
    export BAT_THEME=GitHub
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    export MANROFFOPT="-c"
    abbr -a show 'bat --show-all'
end

# abbr:eza
if type -q eza
    abbr -a l 'eza'
    abbr -a ls 'eza'
    abbr -a ll 'eza -l'
    abbr -a lla 'eza -la'
    abbr -a lt 'eza --tree --git-ignore'
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

# functions
if type -q bat
    function hp -d "highlight help messages with `bat`"
        argparse --min-args 1 'h/help' -- $argv
        or return
        $argv --help 2>&1 | bat --plain --language=help
    end
end

if type -q nvim
    function nvim
        if test (count $argv) -eq 1
            set -l parts (string match --regex --groups-only '^(.+):([0-9]+)$' -- $argv[1])
            if test (count $parts) -eq 2; and test -f "$parts[1]"
                command nvim "+$parts[2]" -- "$parts[1]"
                return
            end
        end

        command nvim $argv
    end
end

# pixi
if type -q pixi
    pixi completion --shell fish | source
end

# starship (this has to be placed at the end of this file)
if type -q starship
    starship init fish | source
end
