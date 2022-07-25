### install
```console
$ git clone --bare https://github.com/ffrub/dotfiles.git $HOME/code/dotfiles && source ~/.zshrc
```

### edit
This config adds the alias `dotfiles`, which adds some configuration to the git command.
After editing a config file in the home directory it can be added and commit with the alias.

```console
$ dotfiles add ~/path/to/file && git commit -v
```

