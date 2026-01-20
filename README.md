# Dotfiles

## Setup a New Machine

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --verbose --ssh zcking/dotfiles
```
Or if you would like to run it but only see what *would have* changed/executed, without actually modifying your files:  

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --dry-run --verbose --ssh zcking/dotfiles
```

That's right, just one command.

> [!NOTE]
> These dotfiles are only tested on Mac OS (darwin). I plan to update everything to support Linux (most likely Debian-based distros) but if you are reading this note then I haven't gotten to it yet. Thanks for understanding, cheers!

> [!TIP]
> If you do not use SSH for Git, and have trouble accessing the repo, try removing the `--ssh` flag from the command above.

