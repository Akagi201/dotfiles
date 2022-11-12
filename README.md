# dotfiles

[![Chezmoi CI](https://github.com/Akagi201/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/Akagi201/dotfiles/actions/workflows/ci.yml)

## Tools

```sh
brew install chezmoi
sudo pacman -S chezmoi
```

## Init

```sh
chezmoi init https://github.com/Akagi201/dotfiles.git
```

## Add a new dotfile to chezmoi

```sh
chezmoi add ~/.zshrc
```

## Edit chezmoi dot files

```sh
chezmoi cd
# edit dot_files with your favorite editor
```

## Apply chezmoi dotfiles to HOME dir

```sh
chezmoi diff
chezmoi apply -v .zshrc
```

## Push to github

```sh
chezmoi cd
git add .
git commit -m "xxx"
git push
```
