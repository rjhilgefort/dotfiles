# TODO: Conditionall do this- it fails when already installed
xcode-select --install

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update

### More Homebrew Repositories
brew tap alehouse/homebrew-unofficial
brew tap caskroom/fonts
brew tap homebrew/cask-fonts
brew tap d12frosted/emacs-plus

#############
### Brews ###
#############
brews=(
  ### Zsh
  zsh
  zsh-completions
  zsh-autosuggestions
  antigen
  vim
  emacs-plus

  ### Git
  git
  git-extras
  tig

  ### Utilities
  tmux
  fasd
  ag
  ranger
  pandoc

  ### Languages
  ruby
  python@2             # TODO: Why?

  ### Other
  most
  mas                  # Mac App Store installer

  ### Web
  mongodb
  postgresql
  redis
  yarn                  # TODO: --without-node

  ### Networking
  proxychains-ng        # https://github.com/rofl0r/proxychains-ng
  mitmproxy             # https://mitmproxy.org/
)
echo "installing brews..."
brew install ${brews[@]}

#############
### Casks ###
#############
casks=(
  ### Utilities
  alfred
  hyper
  amethyst
  bartender
  rocket
  appcleaner
  istat-menus
  karabiner-elements
  hammerspoon
  homebrew/cask-fonts/font-fira-code
  homebrew/cask-fonts/font-firacode-nerd-font
  ubersicht # Better menu bar
  # git clone https://github.com/zhaorz/zenbar $HOME/Library/Application\ Support/Übersicht/widgets/zenbar
  bitbar # Applets for the menu bar

  ### Second Brain
  1password
  notion
  rescuetime

  ### File Servers
  dropbox
  homebrew/cask-drivers/synology-drive

  ### Development
  docker
  visual-studio-code
  # insomnia Name?
  cacher
  macdown
  insomnia

  ### Gaming
  steam
  battle-net

  ### Media
  spotify
  plex-media-player

  ### Communication
  slack
  skype
  keybase
  goofy
  discord
  yakyak
  # gitter # DNU
  mailspring

  ### Web
  # firefox # DNU
  chromium
  google-chrome
  # vivaldi

  ### VPN / Networking
  # expressvpn
  # tunnelblick # DNU

  ### Yubikey 
  # homebrew/cask-drivers/yubico-authenticator
  # gpg-suite

  ### Crypto
  # exodus
)
echo "installing apps with Cask..."
brew cask install ${casks[@]}

# Need to run this manually to finish install (doesn't show up in Alfred)
open /usr/local/Caskroom/battle-net/latest/Battle.net-Setup.app

# App Store
app_store_packages=(
  585829637 # Todoist
  405399194 # Kindle
  # Helium
  # TODOist
  # Toothfairy
  # Contacts Sync for Google Gmail
  # Pocket
  # Forecast Bar
  # Gifox
  # Airmail3
  # Fantastical
  # Dash
  # Tooth Fairy
)
echo "installing apps with App Store..."
mas install ${app_store_packages[@]}

### Ruby Gems
# https://github.com/athityakumar/colorls#installation
sudo gem install colorls

### Python / PIP
# sudo easy_install pip

### chunkwm
brew tap koekeishiya/formulae
brew install --HEAD chunkwm
brew install --HEAD koekeishiya/formulae/skhd

### NPM Globals
npm_globals=(
  pm2
)
echo "installing NPM globals..."
yarn global add pm2 ${npm_globals[@]}

# Settings
#################################################

### "Disable smart quotes and smart dashes as they are annoying when typing code"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

### Mouse
# defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton # Right click TODO: this doesn't work
# Tracking speed +3
# Swipe between pages with one finger

################
### Keyboard ###
################
# Ergodox capslock to control
# Internal capslock to control
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
# Change "Move focus to next window" to Ctrl-Tab
### Key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

### Trackpad
# Three finger drag
# Tap to click with one finger
# Three finger drag
# https://www.makeuseof.com/tag/three-finger-drag-mac/

### Dock
# align to side
# killall Dock
