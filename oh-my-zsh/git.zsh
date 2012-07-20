alias gcob="git checkout -b"
compdef _git gc=git-checkout

alias gcod="git checkout develop"
compdef _git gc=git-checkout

alias gcodp="git checkout develop && git pull origin develop"
compdef _git gc=git-checkout

alias gca="git commit -a -m"
compdef _git gc=git-commit

alias gcaa="git commit --amend -a -m"
compdef _git gc=git-commit
