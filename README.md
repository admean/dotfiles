# dotfiles
Configuration files that I work with. Very likely to include zsh, tmux, vim (in future) and other scripts created by the totally awesome community, with my little changes of mine obviously.
May contain nuts.

## Installation
First of all you're gonna need all the tools I use if you don't already have them.
Choose your favourite package manager, here goes apt:

```shell
sudo apt-get install zsh tmux vim
```

Set up your default shell to be zsh instead of bash
This is done by __chsh__ command

```shell
chsh -s /bin/zsh
```

You may also need to change your default shell in your mate-terminal or other.
This is usually possible to setup in preferences of the terminal, you have to look for own command to execute and type __/bin/zsh__ in.

The rest should go straight away after copying to your home path.
