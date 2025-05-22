# Mac Setup

## Shell
### zsh (Installed by default on mac)
### Dotfiles in github
```zsh
git clone git@github.com:mbe-setpoint/dotfiles.git .dotfiles
cd .dotfiles && stow .
```

## Homebrew (System packages)
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
## Terminal
### Ghostty (settings in dotfiles)
```zsh
brew install ghostty
```
### Font
```zsh
brew install --cask font-jetbrains-mono-nerd-font
```
### OhMyZsh (settings in dotfiles)
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Terminal utilities

### docker
- Using Colima as context. Running with QEMU
	See: https://github.com/abiosoft/colima
```zsh
brew install docker docker-compose lazydocker colima
brew services start colima
colima start
```
### stow (Manage dotfiles)
```zsh
brew install stow
```
### zoxide (Shell extension to navigate your filesystem faster)
```zsh
brew install zoxide
```
### eza (Modern, maintained replacement for ls)
```zsh
brew install eza
```
### bat (Clone of cat(1) with syntax highlighting and Git integration)
```zsh
brew install bat
```
### fzf (Command-line fuzzy finder written in Go)
```zsh
brew install fzf
```
### tmux (Terminal multiplexer)
```zsh
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
	- settings in dotfiles
### asdf (Manage elixir/erlang)
```zsh
brew install asdf
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin add gleam https://github.com/asdf-community/asdf-gleam.git
asdf list all [elixir | erlang | gleam]
asdf install [elixir | erlang | gleam] [version] 
```
### bob (Version manager for neovim)
```zsh
brew install bob
bob install latest
bob use latest
```
### Yazi - terminal based file explorer
```zsh
brew install yazi
```
### uv (python versions, packages and virtual envs)
```zsh
brew install uv
```
### Node
```zsh
brew install nvm
(Update .zshrc as instructed by homebrew)
nvm ls-remote
nvm install [version]
nvm use [version]
brew install yarn
brew install npm
```
### Div plugins for zsh (see .zshrc)
### Amazon's CodeWhisperer (https://aws.amazon.com/blogs/devops/introducing-amazon-codewhisperer-for-command-line/) 


## Mail
- Superhuman (paid)

## Browser
- Zen (synced via mozilla account)

## Task switcher
- Raycast (export / import settings. Stored in dotfiles)

## Window Manager
- Included in task switcher (Raycast - settings need to be imported / exported - current settings are in .config-dir)
- AltTab - better switching between open apps (no settings sync)
- Ice - for task bar enhancement (no settings sync)

## Notes
- Obsidian (Files stored in iCloud)

## Keyboard
- Voyager (settings stored in web)

## Calendar
* Fantastical
* Google calendar

## Remote access
* Windows Remote Desktop (rdp)
* Twingate (vpn-ish)
* Rustdesk
* ExpressVPN

## AI
- OpenAI (paid)

## File sync
- G-drive
- OneDrive
- iCloud drive

## Text editor
- Nvim
- Zed
- VSCode

## Office 365
- because we have to….

## Desktop wallpaper
- MyWallpaper (paid?)

## Virtual machines
- Parallells (paid)

