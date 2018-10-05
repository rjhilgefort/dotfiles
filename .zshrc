### OSX antigen file
source /usr/local/share/antigen/antigen.zsh

### Load the oh-my-zsh's library.
antigen use oh-my-zsh

### Bundles
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle brew
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle osx
antigen bundle web-search
antigen bundle vi-mode
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zdharma/history-search-multi-word

### Theme
# antigen theme robbyrussell
antigen theme refined # pure
# antigen theme powerlevel9k # TODO: https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#option-4-install-for-antigen
# antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship # NOTE: A little slow to paint the git prompt

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use

# Tell Antigen that you're done.
antigen apply

# Setup zsh-autosuggestions and completions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)

# Load broken out config files
[[ -s "$HOME/.zsh_aliases" ]] && source "$HOME/.zsh_aliases"
[[ -s "$HOME/.zsh_env" ]] && source "$HOME/.zsh_env"
[[ -s "$HOME/.zsh_secret" ]] && source "$HOME/.zsh_secret"

# Up the default ulimit
ulimit -n 2048

# fasd
eval "$(fasd --init auto)"

# colorls - https://github.com/athityakumar/colorls
source $(dirname $(gem which colorls))/tab_complete.sh

# Always list after cd
cd() { builtin cd "$@"; colorls -A --sort-dirs; }
