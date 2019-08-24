# Dotfile

This is my personal dotfile.

## set up environment

**basic env**

- [x] [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
- [x] [fish-shell](https://fishshell.com) & [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
- [x] vimrc [https://github.com/amix/vimrc]
- [x] [httpie](https://github.com/jakubroztocil/httpie)
- [x] tmux.conf

**standard env**

- [x] [Rust](https://www.rust-lang.org/)
- [x] [lsd](https://github.com/Peltoche/lsd), [bat](https://github.com/sharkdp/bat), [xsv](https://github.com/BurntSushi/xsv)
- [ ] [nvtop](https://github.com/Syllo/nvtop)

## install

```sh
git clone --depth=1 https://github.com/kemingy/dotfile.git ~/.dotfile
cd ~/.dotfile && sh bootstrap.sh
```

For basic env, use `cd ~/.dotfile && sh bootstrap_basic.sh`.

## uninstall vimrc, rust, fish

`cd ~/.dotfile && fish uninstall.fish`
