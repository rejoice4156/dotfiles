# Dotfiles

## Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install bootstrap packages
```bash
# MacOS
brew install openssh git chezmoi 1password-cli 1password

# Linux
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install 1password-cli 1password
brew install chezmoi
```

## Set up dotfiles
```bash
chezmoi init --apply --verbose https://github.com/$GITHUB_USERNAME/dotfiles.git
```

## Install everything else
```bash
brew bundle --file ~/Brewfile
```

## Set up cli programs using 1password-cli
```bash
op plugin init gh
op plugin init glab
op plugin init tea
op plugin init doctl
```

## Set fish as default shell
```bash
chsh -s $(which fish)
```

## Install Docker
```bash
curl -fsSL https://get.docker.com | sh
sudo modprobe ip_tables
dockerd-rootless-setuptool.sh install
sudo loginctl enable-linger karl
export PATH=/usr/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock
```

