alias gp='git push origin HEAD'
alias gs='git status -sb'
alias gap='git add -p'
alias gc='git commit'
alias gco='git checkout'
alias glg='git lg'
alias glg2='git lg2'

# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# Update local branch from the remote, and also clean up remote branches.
# It means if a branch was deleted on the remote (say origin/feature-x), then
# local reference origin/feature-x gets removed too.
alias gpl='git pull --prune'