alias v="vim"
alias ga="git add"
alias gl="git log"
alias gs="git status"
alias gp="git push"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpu="git pull"
alias gc="git commit -am"
alias gd="git diff"

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
