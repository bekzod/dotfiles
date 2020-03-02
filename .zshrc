export ZSH=/Users/bek/.oh-my-zsh

ZSH_THEME="robbyrussell"
HISTSIZE=2000
HOMEBREW_GITHUB_API_TOKEN=9ba74928370c9822aaed9cd0ffa87f0c0e4a5d72
plugins=(git jira npm git-flow sublime ember-cli osx copyfile git-extras)

export OAG_HOME=~/oag #This is deprecated in favor of OAG_DIR, but not everything is switched over yet
export OAG_DIR=~/oag/.oag
export ANDROID_SDK_ROOT=/Users/bek/Library/Android/sdk

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=/usr/local/heroku/bin:$PATH
export PATH=/usr/local/confluent/bin:$PATH
export PATH=$PATH:$HOME/.node/bin:$HOME/bin:$HOME/npm/lib
export PATH=$HOME/Library/Ruby/Gems/2.0.0:$PATH
export PATH=$HOME/Library/Python/2.7/bin:$PATH

export EDITOR='subl -w'
export NODE_PATH=$HOME/npm/lib/node_modules

source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/github"

# alias aws='docker run --rm -it -v ~/.aws:/root/.aws cgswong/aws:aws'
alias ecr-login='eval $(aws --region us-east-2 ecr get-login --no-include-email | sed "s|https://.*|https://docker.oaganalytics.com|")'

alias gst='g status -sb'      # use short version of git status
alias gup='g pull --rebase'   # rebase by default
alias gap='g add -p'          # the best way to run git add
alias gd='g diff'             # show unstaged changes
alias gds='g diff --staged'   # show staged changes
alias gdh='g diff HEAD'       # show staged changes

alias h="heroku"
alias bfiles='bower-files'
alias git="hub"
alias pr="hub pull-request -cp"
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"

eval "$(fasd --init auto)"

alias a='fasd -a'        # any
alias ss='fasd -si'      # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias s='fasd -e subl'   # open the file with sublime
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

alias gc='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias e='ember'

alias nom='npm install && npm prune'
alias port='sudo lsof -i -n -P | grep TCP | grep $1'

alias ng="npm list -g --depth=0 2>/dev/null"
alias nl="npm list --depth=0 2>/dev/null"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$HOME/.yarn/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/bek/.node/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/bek/.node/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/bek/.node/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/bek/.node/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/bek/.sdkman"
[[ -s "/Users/bek/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/bek/.sdkman/bin/sdkman-init.sh"
