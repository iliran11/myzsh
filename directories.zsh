function changeCodeContext() {
  cd $1 &&
    code $1 -r
}

alias codezsh='changeCodeContext ~/.oh-my-zsh/custom/'
alias codelp='changeCodeContext ~/Projects/bookaway-platform/landing-page'
alias codebutler='changeCodeContext ~/Projects/bookaway-platform/butler'
alias coderoutes='changeCodeContext ~/Projects/bookaway-platform/routes-service'
alias codeauth='changeCodeContext ~/Projects/bookaway-platform/auth'
alias codecomponents='changeCodeContext ~/Projects/bookaway-platform/bookaway-components'
alias codefront='changeCodeContext ~/Projects/bookaway-platform/bookaway-front'
alias codeconsumers='changeCodeContext ~/Projects/bookaway-platform/consumers-v3'
alias codealex='changeCodeContext /Users/lirancohen/Projects/personal/starter-gatsby-blog'
alias codek8='changeCodeContext ~/Projects/bookaway-platform/k8s-dev-env'
alias codehosts='code /private/etc/hosts'
