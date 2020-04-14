alias ga="git add"
alias gl="git log"
alias gs="git status"
alias gp="git push"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpull="git pull"
alias gpullo="git pull origin"
alias gpullom="git pull origin master"
alias gc="git commit -am"
alias gca="git commit -a --amend"
alias gd="git diff HEAD"
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
alias gpb='push_branch'
gcob() {
    gc $1 && gpob
}

function gpurge() {
    git branch | xargs git branch -d
}
