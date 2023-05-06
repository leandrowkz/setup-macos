# 🤖 MacOS setup
Here is all necessary apps, configs and more, to a fresh macos installation aimed to software
engineers. Basically, the scripts this repo provide install applications and set basic OS configurations. 

## Usage
First you need to install Homebrew and Mac App Store (mas). After that you're ready to install
everything, just copy the content of the sections you want, paste it on your terminal and you are
ready to go.

## Install Homebrew and MAS
```bash
echo '\n🤖 Installing Homebrew...' 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '\n🤖 Installing Mas (mac app store)...' 
brew install --cask mas
```

## Apps
**An important disclaimer:** those are the apps that I personally am used to use. You are encouraged
to filter the commands removing the apps you don't like.

## 🆙 Productivity
Apps for work or productivity.
```bash
echo '\n\n🤖 Installing Alfred...' 
brew install --cask alfred

echo '\n\n🤖 Installing Notion...'
brew install --cask notion

echo '\n\n🤖 Installing Vanilla...'
brew install --cask vanilla

echo '\n\n🤖 Installing Amphetamine...'
mas install 937984704

echo '\n\n🤖 Installing MeetingBar...'
brew install --cask meetingbar

echo '\n\n🤖 Installing Slack...'
brew install --cask slack

echo '\n\n🤖 Installing Figma...'
brew install --cask figma

echo '\n\n🤖 Installing Grammarly...'
brew install --cask grammarly-desktop

echo '\n\n✅ Done with productivity.'
```

### 💬 Messaging
Communication and messaging apps.
```bash
echo '\n\n🤖 Installing Slack...' 
brew install --cask slack

echo '\n\n🤖 Installing Telegram...' 
brew install --cask telegram

echo '\n\n🤖 Installing Whatsapp...' 
brew install --cask whatsapp

echo '\n\n🤖 Installing Discord...' 
brew install --cask discord

echo '\n\n✅ Done with messaging.'
```

### 🌐 Web browsers
No Internet Explorer 11.
```bash
echo '\n\n🤖 Installing Arc...'
brew install --cask arc

echo '\n\n🤖 Installing Google Chrome...'
brew install --cask google-chrome

echo '\n\n🤖 Installing Firefox...'
brew install --cask firefox

echo '\n\n🤖 Installing Microsoft Edge...'
brew install --cask microsoft-edge

echo '\n\n✅ Done with web browsers.'
```

### 📦 Misc and utilities
Utilities or related to OS apps.
```bash
echo '\n\n🤖 Installing Topnotch...' 
brew install --cask topnotch

echo '\n\n🤖 Installing EasyRes...' 
mas install 688211836

echo '\n\n🤖 Installing Spotify...'
brew install --cask spotify

echo '\n\n🤖 Installing Unarchiver...'
brew install --cask the-unarchiver

echo '\n\n🤖 Installing Rectangle...'
brew install --cask rectangle

echo '\n\n🤖 Installing Gifox...'
brew install --cask gifox

echo '\n\n🤖 Installing MenubarX...'
brew install --cask menubarx

echo '\n\n🤖 Installing Dear Sun...'
mas install 1580614999

echo '\n\n🤖 Installing Rocket...'
brew install --cask rocket

echo '\n\n🤖 Installing NordVPN...'
brew install --cask nordvpn

echo '\n\n🤖 Installing Bitwarden...'
brew install --cask bitwarden

echo '\n\n✅ Done with misc and utilities.'
```

### 👩‍💻 Development
Apps for software development or related.
```bash
echo '\n🤖 Installing Git...' 
brew install git

echo '\n🤖 Installing NVM, Node and NPM...'
brew install nvm
nvm --version
node --version
npm --version

echo '\n🤖 Installing last LTS Node version...'
nvm install --lts

echo '\n🤖 Installing PNPM...'
brew install pnpm

echo '\n🤖 Installing Yarn...'
npm i -g yarn

echo '\n🤖 Installing AWS cli...' 
brew install --cask awscli

echo '\n🤖 Installing Terraform...' 
brew install --cask terraform

echo '\n🤖 Installing VSCode...'
brew install --cask visual-studio-code

echo '\n🤖 Installing TablePlus...'
brew install --cask tableplus

echo '\n🤖 Installing Sequel Pro...'
brew install sequel-pro

echo '\n🤖 Installing Docker...'
brew install docker

echo '\n🤖 Installing Postman...'
brew install --cask postman

echo '\n✅ Done with development.'
```

## Terminals
You can install new terminals on your mac os. For this setup the combination
[Warp](https://warp.dev) + [Starship](https://starship.rs) is the choice.

### 1. Install terminal stuff
Besides warp and starship, you also need oh-my-zsh to easy apply zsh configurations.
```bash
echo '\n\n🤖 Installing oh-my-zsh...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '\n\n🤖 Installing Warp terminal...'
brew install --cask warp

echo '\n🤖 Installing Starship...'
curl -sS https://starship.rs/install.sh | sh

echo '\n✅ Done with terminal installation.'
```

### 2. Apply Starship configs
Create a file called `~/.config/starship.toml`:
```toml
# All config option can be found here:
# https://starship.rs/config/#prompt

# Get editor completions based on the config schema
"$schema" = 'https://starship.rs/config-schema.json'

# Inserts a blank line between shell prompts
# It's disabled because in Warp this happens by default and
# this causes an empty space before the prompt text
add_newline = false

# Symbols that appear before your command input
# It's disabled because Warp puts the input in a separeted line
[character]
# success_symbol = '[✅](bold)'
# error_symbol = '[🔥](bold)'
disabled = true

# Disabling package module
[package]
disabled = true
```

### 3. Apply zsh configs
Create (or change) a file called `~/.zshrc` with the following content:
```
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Preferred editor for local and remote sessions
export EDITOR=/usr/bin/vim

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Initialize
eval "$(starship init zsh)"
source $ZSH/oh-my-zsh.sh
```

## OS configurations
You can also apply some basic configurations to your mac os that changes the dock, finder and more.
Take a look at those you think it makes sense to your installation.
```bash
echo '\n\n🤖 Setting Finder to show hidden files...'
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && killall Finder

echo '\n\n🤖 Setting Finder to display as columns by default...'
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" && killall Finder

echo '\n\n🤖 Setting minimize animations to "scale" effect...'
defaults write com.apple.dock "mineffect" -string "scale" && killall Dock

echo '\n\n🤖 Setting dock icon size to 36...'
defaults write com.apple.dock "tilesize" -int "36" && killall Dock

echo '\n\n🤖 Setting dock to autohide...'
defaults write com.apple.dock "autohide" -bool "true" && killall Dock

echo '\n\n🤖 Setting dock to not show recent apps...'
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

echo '\n\n🤖 Adding 5 blank spaces to dock...'
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock

echo '\n\n✅ Done with OS configs.'
```