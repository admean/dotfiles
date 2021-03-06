# alias-tips

[![Build Status](https://travis-ci.org/djui/alias-tips.svg)](https://travis-ci.org/djui/alias-tips)

A Zsh plugin to help remembering those aliases you once defined.

Works with [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh),
[Antigen](http://antigen.sharats.me), [zgen](https://github.com/tarjoilija/zgen)
or pure Zsh.

It works by trying to find an alias for the command you are currently executing
and printing a help line reminding you about that alias.

The idea is that you might be too afraid to execute aliases defined because you
can't remember them correctly, or just have forgotten about some aliases, or
that aliases for your daily commands even exist.


# Example

```sh
$ ls -lh
You know you have an alias for that, right? ll
:

$ git gui
You know you have an alias for that, right? gg
:

$ git rebase --interactive master
You know you have an alias for that, right? gri master
:
```


# Installation

## oh-my-zsh

1. Get it

    Go to your custom plugins folder:

    ```sh
    $ cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins
    ```

    Then either clone:

    ```sh
    $ git clone https://github.com/djui/alias-tips.git
    ```

    Or download:

    ```sh
    $ wget https://github.com/djui/alias-tips/archive/master.zip
    $ unzip master.zip && mv alias-tips-master alias-tips && rm master.zip
    ```

    Or add it as submodule:

    ```sh
    $ git submodule add https://github.com/djui/alias-tips
    $ git submodule update --init
    ```

2. Include it

    Then add the plugin to your plugin list in oh-my-zsh configuration:

    ```sh
    $ $EDITOR ~/.zshrc

    # -plugins=(...)
    # +plugins=(... alias-tips)
    ```


## antigen

1. Add `antigen bundle djui/alias-tips` to your `.zshrc` with your other antigen
   bundle commands.


## zgen

1. Add `zgen load djui/alias-tips` to your `.zshrc`
2. Regenerate your `init.zsh` with `zgen save`


## Zsh

1. Get it `git clone https://github.com/djui/alias-tips.git`
2. Add `source alias-tips/alias-tips.plugin.zsh` to your `.zshrc`.


# Usage

After installation re-source your `.zshrc`.


## Customizations

### Customize the Output

The help string can be configured exporting an environment variable, e.g. in
your `.zshrc`:

```sh
:
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias tip: "
:
```

### Exclude some Aliases

A list of aliases to be excluded from being reminded of can be configured
exporting an environment variable of space separated aliases, e.g. in your
`.zshrc`:

```sh
:
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="_ ll vi"
:
```

### Expand Command to Get Best Alias

If you have several alias, e.g. for different git commands you can activate the
expansion of the command before looking for an alias by setting the environment
variable, e.g. in your .zshrc:

```sh
:
export ZSH_PLUGINS_ALIAS_TIPS_EXPAND=1
:
```

Example:

```sh
alias gRv='git remote -v'
alias gR='git remote'
```

Without the expand option `gR -v` will execute without a tip, with expand, it
will suggest `gRv`.


# Limitations

- *Suffix* and *Global* aliases are currently not supported. Only *Prefix*
  aliases ("command position") are supported. Check the
  [Zsh manual](http://zsh.sourceforge.net/Doc/Release/Shell-Builtin-Commands.html#Shell-Builtin-Commands)
  on `alias` for their definition.
- Multiline aliases (aliases which definition span multiple lines) are not
  supported. Currently their first line only will be used (likely incorrectly)


# FAQ

**Q:** *Why only Zsh?*

**A:** This works because of feature in Zsh called
[preexec](http://zsh.sourceforge.net/Doc/Release/Functions.html). Other shells,
e.g. Bash, do not have this feature. There are
workarounds[[1](https://github.com/rcaloras/bash-preexec),[2](http://www.twistedmatrix.com/users/glyph/preexec.bash.txt)]
but integrating these is a task left for the reader.

# Contributing

Thanks to the following people for their help:

- [m42e](https://github.com/m42e)
- [unixorn](https://github.com/unixorn)

## Testing

    $ python  -m unittest test_alias-tips
    $ python3 -m unittest test_alias-tips
