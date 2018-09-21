xcode-select --install

# Homebrew
#################################################

### Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew tap alehouse/homebrew-unofficial
brew tap caskroom/fonts

### Brews
brews=(
  git
  tig
  tmux
  zsh
  zsh-completions
  zsh-autosuggestions
  antigen
  fasd
  ag
  ranger
  pandoc
)
echo "installing brews..."
brew install ${brews[@]}

### Emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus
ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications

### Casks
casks=(
  # RJH
  alfred
  bartender
  dropbox
  firefox
  homebrew/cask-versions/google-chrome-beta
  steam
  spotify
  skype
  1password
  slack
  synology-drive
  notion
  keybase
  rocket
  iterm2-borderless
  appcleaner
  dash2
  mailbutler
  goofy
  gitter
  istat-menus
  karabiner-elements
  font-fira-code
  hammerspoon
  cacher

  # Stealth Startup
  homebrew/cask-drivers/yubico-authenticator
  gpg-suite
)
echo "installing apps with Cask..."
brew cask install ${casks[@]}

# App Store
app_store_packages=(
  585829637 # Todoist
  405399194 # Kindle
  # Helium
  # TODOist
  # Toothfairy
  # Contacts Sync for Google Gmail
  # Bear
  # Day One
  # Pocket
  # Forecast Bar
  # Gifox
)
echo "installing apps with App Store..."
mas install ${app_store_packages[@]}


# Settings
#################################################

### "Disable smart quotes and smart dashes as they are annoying when typing code"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

### Mouse
# defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton # Right click TODO: this doesn't work
# Tracking speed +3
# Swipe between pages with one finger

### Keyboard
# Ergodox capslock to control
# Internal capslock to control
# defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
# defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

### Trackpad
# Three finger drag
# Tap to click with one finger
# Three finger drag
# https://www.makeuseof.com/tag/three-finger-drag-mac/

### Dock
# align to side
killall Dock

### NPM
npm install -g tern


