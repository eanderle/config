alias v="vim"
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
alias gd="git diff head"
alias gb="git branch"
alias gche="git checkout"
alias gopen="gitopen"

push_branch() {
    branch=`git rev-parse --symbolic-full-name --abbrev-ref HEAD`
    git push $1 $branch
}
alias gpob='push_branch origin'
alias gpb='push_branch'

alias ss="svn status"
alias sa="svn add"
alias sc="svn commit -m"
alias sup="svn up"
alias sd="svn diff"
alias pp='python -mjson.tool'
alias px='xmllint --format -'
alias urle='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
