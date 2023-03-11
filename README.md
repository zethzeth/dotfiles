# Zeth's dotfiles

## Todo

 - Finish tutorial: https://laracasts.com/series/neovim-as-a-php-ide/episodes/7
 - Go through `.zshrc` and add it to the default version of it.
 - Go through Mike's dotfiles

## Install

### Install-script

Run install-script: `./install`

### Install dependencies


Setup `zsh`. Remember `chsh -s /bin/zsh`
Setup Powerlevel 10k theme.

Path

Ensure path is good. Something like this:

```
typeset -U path cdpath fpath
path=(
    $HOME/.local/bin
    /usr/local/bin
    /usr/local/sbin
    $HOME/.composer/vendor/bin
    $HOME/bin
    $path
)
```


```
npm install --location=global intelephense
npm install --location=global @volar/vue-language-server

brew install --cask kitty
brew install ripgrep
brew install broot
brew install fd
brew install bat
```

### Setup Kitty

Use command: `kitty list-fonts` to see which fonts it can 'see'.  
The JetBrains NerdFont is nice. 


