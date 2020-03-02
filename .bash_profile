
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export OAG_HOME=~/oag #This is deprecated in favor of OAG_DIR, but not everything is switched over yet
export OAG_DIR=~/oag/.oag

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/bek/.sdkman"
[[ -s "/Users/bek/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/bek/.sdkman/bin/sdkman-init.sh"
