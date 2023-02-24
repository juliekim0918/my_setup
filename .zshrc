# My custom bash stuff

# clockwork related stuff
source /opt/dev/dev.sh
source /opt/secrets/current/dev_env_exports.sh

# python + nvm stuff
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PATH=$(pyenv root)/shims:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# custom alias
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
alias bercov="COVERAGE=1 DISABLE_SPRING=1 bundle exec rspec"
alias bers="bundle exec rails server"
alias berc="bundle exec rails console"
alias rdm="rails db:migrate"
alias rr="rails routes"
alias npmt="npm test"
alias syncm="gswm && gl" # only if you are using oh my zsh
alias vsc="code ."


function gnew() {
 if [ "$3" != "" ]
 then
  git checkout -b "jkim.$1-$2.$3"
 else
  git checkout -b "jkim.taxapps-$1.$2"
 fi
}

local_ci()
{
  bundle exec rubocop -A $1;
  bin/rspec $1;
  bundle exec tapioca gem;
  bundle exec tapioca dsl;
  bundle exec srb tc;
  bundle exec packwerk update-zeitwerk-violations;
  bundle exec packwerk update-deprecations;
  bundle exec packwerk check;
}

// usage: local_ci FILE_OR_DIRECTORY_PATH
// example: local_ci packages/turbine

# change default home directory
cd Desktop/clockwork_web
