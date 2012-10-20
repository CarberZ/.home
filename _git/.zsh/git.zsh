# get the name of the branch we are on
git_prompt_info() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " ${ref#refs/heads/}"
}

alias gl="git log -40 --decorate --graph --all --pretty=oneline --abbrev-commit"
alias glp="git log --decorate -p"
alias gls="git log --decorate --stat"
alias gs="git status"
alias gituncommit="git reset --soft HEAD~1"
alias gitinit="git init && touch README && git add README && git commit README -m \"Initial commit\""