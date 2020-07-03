# Dotfiles

This is my [@zcking](https://github.com/zcking) collection of dotfiles for personal use.

Mainly managing here as a backup and to have an excuse to keep it organized, but feel free to reuse, share, etc. Just know that I won't be accepting any pull requests to this repo of course...

---

## Setup

Easy, just clone and run the setup script with Bash.

```shell
git clone https://github.com/zcking/dotfiles ~/dotfiles
cd ~/dotfiles
chmod +x setup.sh
./setup.sh
```

This will prompt for installing the various components under the `install/` folder. You can skip the components you don't need, or easily add more by modifying the `setup.sh` script.

## Usage

For normal day-to-day changes that you make to the dotfiles (e.g. `~/.zshrc`, `~/.aliases`, etc.) those will be automatically version controlled by your local copy of this Git repo.

This is because the `bin/sync.sh` script creates symlinks so for example, your normal `~/.zshrc` file is actually a symlink to the `~/dotfiles/system/.zshrc` file in the local repository.

If you make changes and want to commit those changes, simply go to your local copy of this Git repo and make commits.

## Testing

I've developed and tested this code using a couple different methods:

1. Running directly on host machine (risky rodger!)
2. Running in Ubuntu Docker container (`make test`)
3. Running in Kali Virtual machine (`vagrant up`)
