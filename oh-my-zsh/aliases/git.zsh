alias ga="git add"
alias gl="git log"
alias glo="git log --oneline"
alias gs="git status"
alias gp="git push"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpull="git pull"
alias gpullo="git pull origin"
alias gpullom="git pull origin main --ff-only"
alias gc="git commit"
alias gcam="git commit --amend"
alias gcall="git commit -a"
alias gcallm="git commit -a -m"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gds="git diff --staged"
alias gb="git branch"
alias gche="git checkout"
alias gopen="gitopen"

function gpullum() {
    current_branch=$(git rev-parse --abbrev-ref HEAD);
    default_branch=$(git rev-parse --abbrev-ref origin/HEAD | awk -F "/" '{print $NF}');
    if [ $current_branch != $default_branch ]; then
        git checkout $default_branch;
    fi
    git pull upstream $default_branch;
}

push_branch() {
    branch=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
    git push $1 $branch
}
alias gpob='push_branch origin'
alias gpub='push_branch upstream'
alias gpb='push_branch'
gcob() {
    gc -m $1 && gpob
}

function gpurge() {
    git branch | xargs git branch -d
}
function gkillwhitespace() {
    git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero && git restore .
}

#!/bin/bash -e
# given a commit, find immediate children of that commit.
function gchildren() {
    for arg in "$@"; do
      for commit in $(git rev-parse $arg^0); do
        for child in $(git log --format='%H %P' --all | grep -F " $commit" | cut -f1 -d' '); do
          git describe $child
        done
      done
    done
}
