function moveDirectory() {
  cd $1 &&
    code $1 -r
}

alias codezsh='moveDirectory ~/.oh-my-zsh/custom/'
alias codelp='moveDirectory ~/Projects/bookaway-platform/landing-page'
alias codebutler='moveDirectory ~/Projects/bookaway-platform/butler'
alias coderoutes='moveDirectory ~/Projects/bookaway-platform/routes-service'
