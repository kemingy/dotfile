# Dotfile

[![GitHub Actions](https://github.com/kemingy/dotfile/workflows/CI/badge.svg)](https://github.com/kemingy/dotfile/actions)
![GitHub](https://img.shields.io/github/license/kemingy/dotfile)


This is my personal dotfile.

## set up environment

**basic env**

- [x] [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
- [x] [fish-shell](https://fishshell.com)
- [x] vimrc [https://github.com/amix/vimrc]
- [x] [httpie](https://github.com/jakubroztocil/httpie)
- [x] tmux.conf
- [x] global git ignore
- [x] [Rust](https://www.rust-lang.org/)
- [x] [exa](https://github.com/ogham/exa)
- [x] [ripgrep](https://github.com/BurntSushi/ripgrep)
- [x] [bat](https://github.com/sharkdp/bat)
- [x] [delta](https://github.com/dandavison/delta)
- [x] [fd](https://github.com/sharkdp/fd)

## install

```sh
git clone --depth=1 https://github.com/kemingy/dotfile.git ~/.dotfile
cd ~/.dotfile && sh bootstrap.sh
```

## uninstall vimrc, rust, fish

`cd ~/.dotfile && fish uninstall.fish`

## Ref

* [Desktop and editor setup for Rust development by Jon Gjengset](https://youtu.be/ycMiMDHopNc)
* [lsd: the next gen ls command](https://github.com/Peltoche/lsd)
* [delta: a viewer for git and diff output](https://github.com/dandavison/delta)
* [iredis: interactive redis cli tool with autocompletion and highlight](https://github.com/laixintao/iredis)
* [Nu Shell: a new type of shell that print in table format](https://github.com/nushell/nushell)
