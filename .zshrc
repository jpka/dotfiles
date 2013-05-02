# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jpka"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node ruby vim jpka)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell
source "$HOME/nvm/nvm.sh"
#nvm use default

# Customize to your needs...
#export NVM_BIN=$HOME/nvm/$(node -v)/bin
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:$HOME/.rvm/bin:$NVM_BIN:/data/bin/mongodb/bin:/data/bin/phantomjs/bin:/data/bin/CEF3/depot_tools
export PHANTOMJS_BIN=$NVM_BIN/phantomjs

source $ZSH/oh-my-zsh.sh

# CUSTOM
unsetopt correct_all

. ~/z.sh
precmd () {
  z --add "$(pwd -P)"
}

alias sudo='sudo env PATH=$PATH'

rvm use default
