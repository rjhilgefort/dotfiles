### NOTE: DO THIS FIRST!
# NOTE: Download Synology Drive and link "Store" (10/07/2018)
# https://global.download.synology.com/download/Tools/SynologyDriveClient/1.1.2-10562/Mac/Installer/synology-drive-10562.dmg
# NOTE: Make sure git submodules have been installed:
# git submodule update --init --recursive

# Get SSH in the right spot first
ln -s ~/Store/AppData/ssh ~/.ssh
chmod 400 ~/.ssh/id_rsa

# Clone and link Dotfiles
mkdir ~/Code
cd ~/Code
git clone git@github.com:rjhilgefort/dotfiles.git
ln -s ~/Code/dotfiles ~/dotfiles

### Zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -sf ~/dotfiles/.zsh_env ~/.zsh_env
# ln -sf ~/dotfiles/.zsh_secret ~/.zsh_secret # NOTE: Not stored in git. TODO: Store in synology and symlink from there?
chsh -s $(which zsh)
exec /bin/zsh -l # reload shell
compaudit | xargs chmod g-w # Fixes: "zsh compinit: insecure directories, run compaudit for list"

### Git
ln -sf ~/dotfiles/.gitconfig.rjhilgefort ~/.gitconfig

### Tmux
ln -sf ~/dotfiles/.tmux ~/.tmux
ln -sf ~/dotfiles/.tmux/.tmux.conf ~/.tmux.conf

### Emacs / Spacemacs
ln -sf ~/dotfiles/.emacs.d ~/.emacs.d
ln -sf ~/dotfiles/.spacemacs.d ~/.spacemacs.d
sudo ln -sf /usr/local/Cellar/emacs-plus/26.1/bin/emacs /usr/bin/emacs
sudo ln -sf /usr/local/Cellar/emacs-plus/26.1/bin/emacs-26.1 /usr/bin/emacs-26.1
sudo ln -sf /usr/local/Cellar/emacs-plus/26.1/bin/emacsclient /usr/bin/emacsclient
sudo ln -sf /usr/local/Cellar/emacs-plus/26.1/bin/ebrowse /usr/bin/ebrowse
# ln -sf /usr/local/opt/emacs-plus/Emacs.app /Applications

### NPM
# NOTE: This is here because we need zsh to have installed nvm
npm install -g tern
npm install -g avn avn-nvm # https://github.com/wbyoung/avn
npm install -g node-gyp
npm install -g vmd # https://github.com/yoshuawuyts/vmd

### Hammerspoon
rm -rf ~/.hammerspoon
ln -sf ~/dotfiles/.hammerspoon ~/.hammerspoon
ln -sf ~/dotfiles/.src/miro-windows-manager/MiroWindowsManager.spoon ~/dotfiles/.hammerspoon/Spoons

# Other/Misc
ln -sf ~/dotfiles/.config ~/.config
ln -sf ~/dotfiles/.avnrc ~/.avnrc
ln -sf ~/dotfiles/bin ~/bin
ln -sf ~/dotfiles/pm2.json ~/pm2.json

