# Dotfiles

This is my [@zcking](https://github.com/zcking) collection of dotfiles for personal use.

Mainly managing here as a backup and to have an excuse to keep it organized, but feel free to reuse, share, etc. Just know that I won't be accepting any pull requests to this repo of course...

---

## USAGE

Easy, just run the setup script with Bash.

```shell
chmod +x setup.sh
./setup.sh
```

This will prompt for installing the various components under the `install/` folder. You can skip the components you don't need, or easily add more by modifying the `setup.sh` script.

## Testing

I've developed and tested this code using a couple different methods:

1. Running directly on host machine (risky rodger!)
2. Running in Ubuntu Docker container (`make test`)
3. Running in Kali Virtual machine (`vagrant up`)
