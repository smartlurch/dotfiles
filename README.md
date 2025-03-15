# dotfiles

my linux config files managed by chezmoi

## getting started

initialize and pull down dotfiles from github with chezmoi:

```
chezmoi init https://github.com/smartlurch/dotfiles.git
```

apply the dotfiles from the chezmoi repo to local machine:

```
chezmoi apply
```

add new file to chezmoi:

```
chezmoi add ~/file.txt
```

commit changes to git:

```
    chezmoi cd
    git add .
    git commit -m "message"
    git push
    exit
```

edit file managed by chezmoi and apply changes on exit:

...
chezmoi edit --apply ~/file.txt
...

## Installing packages realted to the dotfiles

### Debian/Ubuntu

```
apt install neovim alacritty kitty vim ansible git yazi chezmoi
```

### Fedora

```
dnf install neovim alacritty kitty vim ansible git yazi chezmoi
...

### Arch Linux

...
yay -Sy neovim alacritty kitty vim ansible git yazi chezmoi
...

## Bootstrapping using nix packages

1. Use base linux distro to install a few packages to get started
    a. git
    b. chezmoi

2. run chezmoi init command from above

```

chezmoi init https://github.com/smartlurch/dotfiles.git

```

3. make ~/bootstrap.sh execuatable

...
chmod +x ~/bootstrap.sh
...

4. run bootstrap,sh to install nix packages and nix home manager

...
~/bootstrap.sh
...

5. apply chezmoi dotfiles

...
chezmoi apply
...

6. update home manger to install nix packages

...
home-manager switch
...
```
