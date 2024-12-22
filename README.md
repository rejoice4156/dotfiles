# dotfiles

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install 1password 1password-cli chezmoi
chezmoi init --apply git@github.com:rejoice4156/dotfiles.git
brew bundle install ~/Brewfile
op plugin init gh
op plugin init glab
op plugin init doctl
atuin login
atuin sync
```
