# 🤖 MacOS setup
Here is all necessary apps, configs and more, to a fresh macos installation aimed to software
engineers. Basically, the scripts this repo provide install applications and set basic OS configurations. 

## Usage
First you need to install Homebrew and Mac App Store (mas). After that you're ready to install
everything, just copy the content of the sections you want, paste it on your terminal and you are
ready to go.

### Install Homebrew and MAS
```bash
echo '\n🤖 Installing Homebrew...' 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '\n🤖 Installing Mas (mac app store)...' 
brew install mas
```

## Apps
**An important disclaimer:** those are the apps that I personally am used to use. You are encouraged
to filter the commands removing the apps you don't like.

### 🆙 Productivity
```bash
echo '\n🤖 Installing Alfred...' 
brew install --cask alfred

echo '\n🤖 Installing Notion...'
brew install --cask notion

echo '\n🤖 Installing Vanilla...'
brew install --cask vanilla

echo '\n🤖 Installing Amphetamine...'
mas install 937984704

echo '\n🤖 Installing MeetingBar...'
brew install --cask meetingbar

echo '\n🤖 Installing Figma...'
brew install --cask figma

echo '\n🤖 Installing Grammarly...'
brew install --cask grammarly-desktop
```

### 💬 Messaging
```bash
echo '\n🤖 Installing Slack...' 
brew install --cask slack

echo '\n🤖 Installing Telegram...' 
brew install --cask telegram

echo '\n🤖 Installing Whatsapp...' 
brew install --cask whatsapp

echo '\n🤖 Installing Discord...' 
brew install --cask discord
```

### 🌐 Web browsers
```bash
echo '\n🤖 Installing Arc...'
brew install --cask arc

echo '\n🤖 Installing Google Chrome...'
brew install --cask google-chrome

echo '\n🤖 Installing Firefox...'
brew install --cask firefox

echo '\n🤖 Installing Microsoft Edge...'
brew install --cask microsoft-edge
```

### 📦 Misc and utilities
```bash
echo '\n🤖 Installing Topnotch...' 
brew install --cask topnotch

echo '\n🤖 Installing Spotify...'
brew install --cask spotify

echo '\n🤖 Installing AppCleaner...'
brew install --cask appcleaner

echo '\n🤖 Installing Unarchiver...'
brew install --cask the-unarchiver

echo '\n🤖 Installing Rectangle...'
brew install --cask rectangle

echo '\n🤖 Installing Gifox...'
brew install --cask gifox

echo '\n🤖 Installing Shottr...'
brew install --cask shottr

echo '\n🤖 Installing MenubarX...'
brew install --cask menubarx

echo '\n🤖 Installing Dear Sun...'
mas install 1580614999

echo '\n🤖 Installing Rocket...'
brew install --cask rocket

echo '\n🤖 Installing NordVPN...'
brew install --cask nordvpn

echo '\n🤖 Installing Bitwarden...'
brew install --cask bitwarden
```

### 👩‍💻 Development
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
brew install awscli

echo '\n🤖 Installing Terraform...' 
brew install terraform

echo '\n🤖 Installing DevToys...'
brew install --cask devtoys

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
```

## Terminals
MacOS default terminal is too simple, so let's install a better terminal and related tools. For this setup the combination is [oh-my-zsh](https://ohmyz.sh) + [Warp](https://warp.dev) + [Starship](https://starship.rs). The result should be something like this terminal:

![Warp](./warp.gif)

### 1. Install oh-my-zsh
You need to first install oh-my-zsh to handle your zsh configurations better.
```bash
echo '\n🤖 Installing oh-my-zsh...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Install Warp terminal and Starship
Warp is a terminal on steroids, whereas starship is a nice prompt.
```bash
echo '\n🤖 Installing Warp terminal...'
brew install --cask warp

echo '\n🤖 Installing Starship...'
curl -sS https://starship.rs/install.sh | sh
```

### 3. Set warp to respect custom prompts
Warp by default comes with its own prompt, which overrides starship. In order to have starship working
you need to toggle custom prompt by right-clicking on the prompt area above the input and select "Use my own prompt" or toggle "Honor user's custom prompt (PS1) from the Settings > Features page".

For more information, see: https://docs.warp.dev/features/prompt#how-to-access-it

### 4. Apply Starship configs
Create a file called `~/.config/starship.toml` with the following content:
```toml
# All config option can be found here:
# https://starship.rs/config/#prompt

[battery]
full_symbol = "🔋"
charging_symbol = "🔌"
discharging_symbol = "⚡"

[[battery.display]]
threshold = 30
style = "bold red"

[character]
error_symbol = "❌"

[cmd_duration]
min_time = 10_000  # Show command duration over 10,000 milliseconds (=10 sec)
format = " took [$duration]($style)"

[directory]
truncation_length = 5
format = "[$path]($style)[$lock_symbol]($lock_style) "

[git_branch]
format = " [$symbol$branch]($style) "
symbol = "🍣 "
style = "bold yellow"

[git_commit]
commit_hash_length = 8
style = "bold white"

[git_state]
format = '[\($state( $progress_current of $progress_total)\)]($style) '

[git_status]
conflicted = " 🆘×${count}"
ahead = " 🅰️ ×${count}"
behind = " 🅱️ ×${count}"
diverged = " 🆎${ahead_count}×${behind_count}"
untracked = " 🆕×${count}"
stashed = " 🚾"
modified = " 🚧×${count}"
staged = " ⤴️ ×${count}"
renamed = " 🈯️×${count}"
deleted = " ⛔️×${count}"
style = "bright-white"
format = "$all_status$ahead_behind"

[hostname]
ssh_only = false
format = "<[$hostname]($style)>"
trim_at = "-"
style = "bold dimmed white"
disabled = true

[memory_usage]
format = "$symbol[${ram}( | ${swap})]($style) "
threshold = 70
style = "bold dimmed white"
disabled = false

[package]
disabled = false

[python]
format = "[$symbol$version]($style) "
style = "bold green"

[rust]
format = "[$symbol$version]($style) "
style = "bold green"

[time]
time_format = "%T"
format = "🕙 $time($style) "
style = "bright-white"
disabled = false

[username]
style_user = "bold dimmed blue"
show_always = false

[nodejs]
format = "via [🤖 $version](bold green) "
```

### 5. Apply zsh configs
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
echo '\n🤖 Setting Finder to show hidden files...'
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && killall Finder

echo '\n🤖 Setting Finder to display as columns by default...'
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" && killall Finder

echo '\n🤖 Setting minimize animations to "scale" effect...'
defaults write com.apple.dock "mineffect" -string "scale" && killall Dock

echo '\n🤖 Setting dock icon size to 48...'
defaults write com.apple.dock "tilesize" -int "48" && killall Dock

echo '\n🤖 Setting dock to autohide...'
defaults write com.apple.dock "autohide" -bool "true" && killall Dock

echo '\n🤖 Setting dock to not show recent apps...'
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

echo '\n🤖 Adding 5 blank spaces to dock...'
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
```

## Enable HiDPI resolutions
You may need to enable some hidpi resolution to simulate retina resolutions. This is usually necessary for external monitors. Take a look at this https://github.com/xzhih/one-key-hidpi repository for details or run\
the following command to start configuring:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/xzhih/one-key-hidpi/master/hidpi.sh)"
```
