# TODO: These are all just the commands that I ran during manual setup, needs to be updated

# Hammerspoon
# TODO: Make this a symlink. It wasn't working when I tried
cp -a .src/miro-windows-manager/MiroWindowsManager.spoon .hammerspoon/Spoons/MiroWindowsManager.spoon

# TODO: Possible format for linking below (untested)

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.zsh_env ~/.zsh_env
ln -s ~/dotfiles/.zsh_secret ~/.zsh_secret

ln -s ~/dotfiles/.config ~/.config
ln -s ~/dotfiles/.avnrc ~/.avnrc
ln -s ~/dotfiles/.aws ~/.aws
ln -s ~/dotfiles/bin ~/bin
