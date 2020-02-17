function changeCodeContext() {
  cd $1 &&
    code $1 -r
}

alias codezsh='changeCodeContext ~/.oh-my-zsh/custom/'
alias codelp='changeCodeContext ~/Projects/bookaway-platform/landing-page'
alias codebutler='changeCodeContext ~/Projects/bookaway-platform/butler'
alias coderoutes='changeCodeContext ~/Projects/bookaway-platform/routes-service'
alias codeauth='changeCodeContext ~/Projects/bookaway-platform/auth'
