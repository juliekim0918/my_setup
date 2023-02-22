# My bash aliases

alias gpl="git pull"
alias gp="git push"
alias gpf="git push -f"
alias ga="git a"
alias gc="git commit -m"
alias gcn="git commit --no-verify -m"
alias gb="git branch"
alias gbd="git branch -d"
alias gnope="git checkout ."
alias gd="git diff"
alias grb="git rebase"
alias gsw="git switch"
alias gswm="git switch main"
alias gswmas="git switch master"
alias grbc="git rebase --continue"
alias gco="git checkout"
alias gs="git status"
alias gclean="git branch | grep -v "develop" | grep -v "master" | grep -v "main" | xargs git branch -D"
alias besr="bundle exec spring rspec"
alias ber="bundle exec rspec"

function gnew() {
 if [ "$3" != "" ]
 then
  git checkout -b "jkim.$1-$2.$3"
 else
  git checkout -b "jkim.taxapps-$1.$2"
 fi
}
