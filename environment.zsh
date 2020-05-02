export NPM_TOKEN="9beb0faf-94f0-41f1-b4e6-d94fa0cf22b7"
export BW_INSTALL_PATH="~/Projects/bookaway-platform"
export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/application_default_credentials.json
export NODE_ENV=development
export PAYMENT_PORT=3004
export PAYMENT_DEBUG_PORT=4004
export N_PREFIX=~/n
export PATH=$N_PREFIX/bin:$PATH

PATH="$PATH:$HOME/.rvm/bin;"
PATH="$PATH:~/bin;"

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# source $(dirname $(gem which colorls))/tab_complete.sh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
