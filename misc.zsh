alias 1='cd ~/Projects/bookaway-platform/'
alias bo='git branch --sort=-committerdate'
alias z_edit='code  ~/.zshrc'
alias zsource='source ~/.zshrc'
alias z_copy_source='cat ~/.zshrc | pbcopy'
alias h_browse='hub browse'
alias hwatch='watch -g hub ci-status; say Done Circle CI'
alias kubetoken='sh kube_token'
alias kubeproxy='kubectl proxy'
alias dockerkillall='docker kill $(docker ps -q)'
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias dockerclean='dockercleanc || true && dockercleani'
alias hwatch='watch -g hub ci-status; say Done Circle CI'
alias hbrowse='hub browse'
alias hstatus='hub ci-status'
alias portforwardredisstage='kubectl port-forward --namespace stage svc/bw-redis-stage-master 7000:6379'
alias portforwardredisprod='kubectl port-forward --namespace bookaway svc/bw-w-master 8000:6379'
alias deploy='git log -1 --pretty=%H | pbcopy && openSpinnaker $(basename $(pwd))'
alias delete-branches='git branch | grep -v "master" | xargs git branch -D'
alias dockerinit='dockerkillall && dockerclean'
alias spaceship='open https://github.com/denysdovhan/spaceship-prompt'
alias cleardesktop='rm -rf  ~/Desktop/*'
alias undolastcommit='git reset --soft HEAD~1'
alias lll="colorls -1 -al --sd"
alias ll="colorls -1 -A --sd"
alias gm="pushd ~/Projects/bookaway-platform/git-dev-flow; ./gm.sh --include-ops; popd;"

# FTP
alias copymenuitem='sh /Users/lirancohen/.oh-my-zsh/custom/scripts/copy-menu-item-with-icon.sh'
alias copychildtheme='sh /Users/lirancohen/.oh-my-zsh/custom/scripts/copy-child-theme.sh'
alias copychangeanchors='sh /Users/lirancohen/.oh-my-zsh/custom/scripts/change-anchors.sh'
alias ftpput='ncftpput  -R -v -u $USER -p $PASSWORD $HOST \'
alias ftpopen='ncftp -u $USER -p $PASSWORD $HOST'

export K8S_PERSONAL_CONTEXT=gke_travelertick_europe-west2-a_developers-gke-cluster
export K8S_PERSONAL_NAMESPACE=liran
export K8S_PERSONAL_SUBDOMAIN=liran

function runjob() {
  temp_job_name=$1-$(date +%s)
  kubectl create job --from=cronjobs/$1 $temp_job_name -n $2 &&
    echo Delete Job: kubectl delete job $temp_job_name
}
function openSpinnaker() {
  open "https://spinnaker.bookaway.com/#/applications/${1}/executions"
}
function killport() {
  echo $(lsof -ti:$1)
  lsof -ti:$1 | xargs kill
  echo "killed port ${1}"
}

function telep() {
  PORT=3000 &&
    DEPLOYMENT_NAME=$1 &&
    telepresence --swap-deployment $DEPLOYMENT_NAME --expose $PORT
}
function deploydelete {
  kubectl delete deployment -n liran $1
}
