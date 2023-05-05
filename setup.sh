echo '\n\n🤖 Installing homebrew...' 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '\n\n🤖 Installing starship...'
curl -sS https://starship.rs/install.sh | sh

echo '\n\n🤖 Applying starship configs...'
cp ./configs/starship.toml ~/.config

echo '\n\n🤖 Installing oh-my-zsh...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '\n\n🤖 Applying configs to zshrc...'
cp ./configs/.zshrc ~

echo '\n\n🤖 Installing Warp terminal...'
brew install --cask warp

echo '\n\n🤖 Installing Topnotch...' 
brew install --cask topnotch

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

echo '\n\n🤖 Installing Git...' 
brew install git

echo '\n\n🤖 Installing NVM, Node and NPM...'
brew install nvm
nvm --version
node --version
npm --version

echo '\n\n🤖 Installing last LTS Node version...'
nvm install --lts

echo '\n\n🤖 Installing PNPM...'
brew install pnpm

echo '\n\n🤖 Installing Yarn...'
npm i -g yarn

echo '\n\n🤖 Installing VSCode...'
brew install --cask visual-studio-code

echo '\n\n🤖 Installing Slack...'
brew install --cask slack

echo '\n\n🤖 Installing TablePlus...'
brew install --cask tableplus

echo '\n\n🤖 Installing Docker...'
brew install docker

echo '\n\n🤖 Installing Postman...'
brew install --cask postman

echo '\n\n🤖 Installing Figma...'
brew install --cask figma

echo '\n\n🤖 Installing Notion...'
brew install --cask notion

echo '\n\n🤖 Installing Spotify...'
brew install --cask spotify

echo '\n\n🤖 Installing Google Chrome...'
brew install --cask google-chrome

echo '\n\n🤖 Installing Firefox...'
brew install --cask firefox

echo '\n\n🤖 Installing Microsoft Edge...'
brew install --cask microsoft-edge

echo '\n\n🤖 Installing Unarchiver...'
brew install --cask the-unarchiver

echo '\n\n🤖 Installing Rectangle...'
brew install --cask rectangle

echo '\n\n🤖 Installing Gifox...'
brew install --cask gifox

echo '\n\n🤖 Installing MenubarX...'
brew install --cask menubarx

echo '\n\n🤖 Installing MeetingBar...'
brew install --cask meetingbar

echo '\n\n🤖 Installing Grammarly...'
brew install --cask grammarly-desktop

echo '\n\n🤖 Installing Rocket...'
brew install --cask rocket

echo '\n\n🤖 Installing Vanilla...'
brew install --cask vanilla

echo '\n\n🤖 Installing NordVPN...'
brew install --cask nordvpn

echo '\n\n🤖 Installing Bitwarden...'
brew install --cask bitwarden

echo '\n\n✅ Done.'