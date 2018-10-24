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
  vim
  python@2
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
  mongodb
  redis
  "yarn --without-node"
  ruby
  git-extras
  most
  mas
  postgresql
  # ShapeShift
  ansible
  pass
  vault
)
echo "installing brews..."
brew install ${brews[@]}

### Emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus

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
  # synology-drive #TODO This doesn't exist
  # davinci-resolve #TODO This doesn't exist # https://sw.blackmagicdesign.com/DaVinciResolve/v15.1.1/DaVinci_Resolve_15.1.1_Mac.zip?Key-Pair-Id=APKAJTKA3ZJMJRQITVEA&Signature=Hbe2X/xt7Zc7bsh+Q/5vDVEUB+xryG64zLL5GJ1rcgXW4iEvVt64Letc3h/T9N7qYcjlprXcE32AsE1+IZxytTavN9SRPkTWCkc87qMknWrvfsV6HKX/e0BIXfqOwUzEhHbJIdPXeKihTEjbXjxdI3B3jH+GGb0gO+UVh8estfAlPS934Lka4gj5yk1sXKo5qRM3PALjaloRauQV20K2Xvuh3rSWjLqnOxUOjZcaPF7+vm2l5mcJb7fEhqVpiyHfYnBITg/cnUmfIBfVPYeA6bn37E8YnAOrZ9PCyLhX/ZY4oHC8Fp3iDVsAkunR6cpueGIWnKFIA8k8HiNOCY2dMA==&Expires=1538971674
  notion
  keybase
  rocket
  iterm2-borderless
  appcleaner
  dash2
  mailbutler
  goofy
  gitter
  istat-menus5
  karabiner-elements
  font-fira-code
  hammerspoon
  cacher
  battle-net
  expressvpn
  rescuetime
  font-firacode-nerd-font
  macdown
  docker
  discord
  # Maaaaaybe
  vivaldi
  # ShapeShift
  homebrew/cask-drivers/yubico-authenticator
  gpg-suite
  tunnelblick
  exodus
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
  # Airmail3
  # Fantastical
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
# Change "Move focus to next window" to Ctrl-Tab

### Trackpad
# Three finger drag
# Tap to click with one finger
# Three finger drag
# https://www.makeuseof.com/tag/three-finger-drag-mac/

### Dock
# align to side
# killall Dock

### Ruby Gems
# https://github.com/athityakumar/colorls#installation
sudo gem install colorls

### Python / PIP
sudo easy_install pip
# Ansible
sudo pip install ansible boto boto3 botocore six ansible-modules-hashivault
sudo pip install passlib
