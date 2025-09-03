########################################
# 主配置文件
########################################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="kolo"
plugins=(git bundler dotenv macos rake rbenv ruby)
source $ZSH/oh-my-zsh.sh

# 加载模块
source "$HOME/dotfiles/shell/env.sh"
source "$HOME/dotfiles/shell/aliases.sh"
source "$HOME/dotfiles/shell/functions.sh"
source "$HOME/dotfiles/shell/plugins.sh"
source "$HOME/dotfiles/shell/conda.sh"
source "$HOME/dotfiles/shell/.fzf.sh"


# # If you come from bash you might have to change your $PATH.
# # export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# # Path to your Oh My Zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# # Set name of the theme to load --- if set to "random", it will
# # load a random theme each time Oh My Zsh is loaded, in which case,
# # to know which specific one was loaded, run: echo $RANDOM_THEME
# # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# # ZSH_THEME="random"
# ZSH_THEME="kolo"

# # Set list of themes to pick from when loading at random
# # Setting this variable when ZSH_THEME=random will cause zsh to load
# # a theme from this variable instead of looking in $ZSH/themes/
# # If set to an empty array, this variable will have no effect.
# # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# # Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# # Uncomment the following line to use hyphen-insensitive completion.
# # Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# # Uncomment one of the following lines to change the auto-update behavior
# # zstyle ':omz:update' mode disabled  # disable automatic updates
# # zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# # Uncomment the following line to change how often to auto-update (in days).
# # zstyle ':omz:update' frequency 13

# # Uncomment the following line if pasting URLs and other text is messed up.
# # DISABLE_MAGIC_FUNCTIONS="true"

# # Uncomment the following line to disable colors in ls.
# # DISABLE_LS_COLORS="true"

# # Uncomment the following line to disable auto-setting terminal title.
# # DISABLE_AUTO_TITLE="true"

# # Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# # Uncomment the following line to display red dots whilst waiting for completion.
# # You can also set it to another string to have that shown instead of the default red dots.
# # e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# # Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# # COMPLETION_WAITING_DOTS="true"

# # Uncomment the following line if you want to disable marking untracked files
# # under VCS as dirty. This makes repository status check for large repositories
# # much, much faster.
# # DISABLE_UNTRACKED_FILES_DIRTY="true"

# # Uncomment the following line if you want to change the command execution time
# # stamp shown in the history command output.
# # You can set one of the optional three formats:
# # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# # or set a custom format using the strftime function format specifications,
# # see 'man strftime' for details.
# # HIST_STAMPS="mm/dd/yyyy"

# # Would you like to use another custom folder than $ZSH/custom?
# # ZSH_CUSTOM=/path/to/new-custom-folder

# # Which plugins would you like to load?
# # Standard plugins can be found in $ZSH/plugins/
# # Custom plugins may be added to $ZSH_CUSTOM/plugins/
# # Example format: plugins=(rails git textmate ruby lighthouse)
# # Add wisely, as too many plugins slow down shell startup.
# plugins=(
# 	git
# 	bundler
# 	dotenv
# 	macos
# 	rake
# 	rbenv
# 	ruby
# )

# source $ZSH/oh-my-zsh.sh

# # User configuration

# # export MANPATH="/usr/local/man:$MANPATH"

# # You may need to manually set your language environment
# export LANG=en_US.UTF-8
# export EDITOR="code -w"        # VSCode 当默认编辑器
# export PAGER="less -R"

# # Preferred editor for local and remote sessions
# # if [[ -n $SSH_CONNECTION ]]; then
# #   export EDITOR='vim'
# # else
# #   export EDITOR='nvim'
# # fi

# # Compilation flags
# # export ARCHFLAGS="-arch $(uname -m)"

# # Set personal aliases, overriding those provided by Oh My Zsh libs,
# # plugins, and themes. Aliases can be placed here, though Oh My Zsh
# # users are encouraged to define aliases within a top-level file in
# # the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# # - $ZSH_CUSTOM/aliases.zsh
# # - $ZSH_CUSTOM/macos.zsh
# # For a full list of active aliases, run `alias`.
# #
# # Example aliases
# alias zshconfig="mate ~/.zshrc"



# # 用户自定义别名
# alias ll='ls -alF'          # 详细列表文件
# alias fd='find . -name'     # 查找
# alias ls='ls -G'            # 颜色ls
# alias nt="open -n /System/Applications/Utilities/Terminal.app" # macOS 开新窗口
# alias cat="bat --paging=never"                                 # 需安装 bat
# alias dc="docker-compose"
# alias k="kubectl"

# alias dc=cd

# # 2025.9.2根据最常用命令
# alias .m="./main" 	# 运行main.cpp编译后的可执行文件
# alias cpp="clang++ -std=c++17 -02" # 生成cpp可执行文件
# alias cdms="cd projects/CSlearning/missing-semester" #进入ms 文件夹


# alias python='python3'      # 默认使用 Python 3
# alias pip='pip3'            # 默认使用 pip3

# # 文件操作
# alias rm='rm -i'            # 删除前确认
# alias cp='cp -i'            # 覆盖前确认
# alias mv='mv -i'            # 移动前确认

# # Git 快捷操作
# alias ga='git add'
# alias gc='git commit -m'
# alias git-log='git log --all --pretty=oneline --abbrev-commit --graph --decorate'  # 查看 Git 日志
# alias gs='git status'       # 快速查看 Git 状态
# alias gp='git push'         # 快速推送


# # 系统工具
# alias ports='lsof -iTCP -sTCP:LISTEN -P'  # 查看占用端口
# alias update='brew update && brew upgrade' # Homebrew 更新

# # ── 函数 ───────────────────────────────────────────
# # 快速进入并列出目录
# cl() { cd "$1" && ll; }

# # 新建并进入目录
# mcd() { mkdir -p "$1" && cd "$1"; }

# # 一键编辑项目文件
# fe() {
#   local file
#   file=$(fzf --query="$1" --select-1 --exit-0) && ${EDITOR:-vim} "$file"
# }


# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<


# source ~/.bashrc  # 确保 .bashrc 中的配置生效



# export PATH="/opt/homebrew/bin:$PATH"  # Homebrew 路径
# # 用户自己的工具
# export PATH="$HOME/.local/bin:$PATH"
# export PATH="$HOME/.dotnet/tools:$PATH"

# # fzf（如果需要单独配置的话）
# export PATH="/opt/homebrew/Cellar/fzf/0.65.1/bin:$PATH"


# export ANTHROPIC_BASE_URL="https://api.moonshot.cn/anthropic"
# export ANTHROPIC_AUTH_TOKEN="sk-prgKkkmaNFPWq3LwWfa4hiEFrQ106BqwOgUixVEVYmFnSwfy"


# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# . "$HOME/.local/bin/env"
