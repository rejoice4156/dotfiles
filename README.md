# dotfiles

## New Machine

1. Install Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```

2. Install 1Password, op, gh and chezmoi

```
brew install 1password 1password-cli gh chezmoi

```

3. Configure 1Password

4. Configure gh using op

```
op plugin init gh

```

5. Set up dotfiles using chezmoi

```
chezmoi init --apply git@github.com:rejoice4156/dotfiles.git

```

6. Install other programs using brew

```
brew bundle install ~/Brewfile

```

7. Set up other tools

```
atuin login && atuin sync
op plugin init glab
op plugin init doctl

```
