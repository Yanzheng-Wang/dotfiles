########################################
# 用户别名
########################################

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# 文件操作
alias ll='ls -alF'
alias ls='ls -G'
alias fd='find . -name'
alias nt="open -n /System/Applications/Utilities/Terminal.app"
alias cat="bat --paging=never"
alias mkdir="mkdir -p"

alias python='python3'
alias pip='pip3'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Git
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gp='git push'
alias git-log='git log --all --pretty=oneline --abbrev-commit --graph --decorate'

# 系统 / 开发工具
alias ports='lsof -iTCP -sTCP:LISTEN -P'
alias update='brew update && brew upgrade'
alias dc="docker-compose"
alias k="kubectl"



# 编辑器
alias zshconfig="code ~/.zshrc"

# 2025-09-01 添加
alias .m="./main"
alias cpp="clang++ -std=c++17 -O2"
alias ms="cd ~/projects/CSlearning/missing-semester"
