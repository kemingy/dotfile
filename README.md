# Dotfile

[![GitHub Actions](https://github.com/kemingy/dotfile/workflows/CI/badge.svg)](https://github.com/kemingy/dotfile/actions)
![GitHub](https://img.shields.io/github/license/kemingy/dotfile)


This is my personal dotfile.

## set up environment

**basic env**

- [x] [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
- [x] [fish-shell](https://fishshell.com)
- [x] [neovim](https://github.com/neovim/neovim)
  - [x] config based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [x] [httpie](https://github.com/jakubroztocil/httpie)
- [x] global git ignore
- [x] [Rust](https://www.rust-lang.org/)
  - [x] [exa](https://github.com/ogham/exa)
  - [x] [ripgrep](https://github.com/BurntSushi/ripgrep)
  - [x] [bat](https://github.com/sharkdp/bat)
  - [x] [difft](https://github.com/Wilfred/difftastic)
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
* [Nu Shell: a new type of shell that print in table format](https://github.com/nushell/nushell)
