# Dotfile

[![GitHub Actions](https://github.com/kemingy/dotfile/workflows/CI/badge.svg)](https://github.com/kemingy/dotfile/actions)
[![Build Status](https://travis-ci.com/kemingy/dotfile.svg?branch=master)](https://travis-ci.com/kemingy/dotfile)
![GitHub](https://img.shields.io/github/license/kemingy/dotfile)


This is my personal dotfile.

## set up environment

**basic env**

- [x] [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
- [x] [fish-shell](https://fishshell.com) & [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
- [x] vimrc [https://github.com/amix/vimrc]
- [x] [httpie](https://github.com/jakubroztocil/httpie)
- [x] tmux.conf
- [x] global git ignore
- [x] [Rust](https://www.rust-lang.org/)
- [x] [exa](https://github.com/ogham/exa), [bat](https://github.com/sharkdp/bat), [rg](https://github.com/BurntSushi/ripgrep)
- [ ] [nvtop](https://github.com/Syllo/nvtop)

## install

```sh
git clone --depth=1 https://github.com/kemingy/dotfile.git ~/.dotfile
cd ~/.dotfile && sh bootstrap.sh
```

## uninstall vimrc, rust, fish

`cd ~/.dotfile && fish uninstall.fish`
