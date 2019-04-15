# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.antigen/bundles/robbyrussell/oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="alanpeabody"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-antigen/antigen.zsh
[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#antigen use oh-my-zsh

antigen use oh-my-zsh

antigen theme elin

#antigen bundle git
#antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle ruby
antigen bundle lighthouse
antigen bundle textmate
antigen bundle colorize
antigen bundle copydir
antigen bundle compleat
antigen bundle history
antigen bundle pass
# 这个是手动添加到plugins目录中的
# 用于自动显示补全信息
antigen bundle incr

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# 自动显示补全
antigen bundle zsh-users/zsh-autosuggestions

# AutoJump
antigen bundle wting/autojump

# Tell Antigen that you're done.
antigen apply

alias ls='ls --color=auto'
alias ll="ls -l --color=auto"
alias blh="bl hight"
alias bll="bl low"
alias blm="bl middle"
alias grep='grep --colour=auto -n'
alias clock='date'
alias diff='grc diff'

# 打开bluetooth
alias blue='service bluetooth restart'

# 蓝牙连接console口失败参考
# https://www.raspberrypi.org/forums/viewtopic.php?t=162911
alias console_conn='service bluetooth restart && sleep 2 && rfcomm connect hci0 98:D3:31:B2:08:F0'

# 刻意练习-英语
alias dp='/root/lib/deiliberate_practice/english/word.rb'
alias lex='/root/lib/deiliberate_practice/english/lex.rb'

# Aio
alias aio='/root/lib/aio/aio_setup.rb'

# Shadowsock 科学上网
alias surfing='nohup sslocal -c ~/.shandowsocks_sslocl_config.json >/dev/null 2>&1 &'

# 自己的回收站
alias rm='sh /etc/trash.sh trash'
alias r='sh /etc/trash.sh trash'
alias rl='sh /etc/trash.sh ls'
alias rls='sh /etc/trash.sh ls'
alias rll='sh /etc/trash.sh ll'
alias ru='sh /etc/trash.sh undelfile'
alias rd='sh /etc/trash.sh delfile'
alias cleartrash='sh /etc/trash.sh cleartrash'
alias cleartrash_direct='sh /etc/trash.sh cleartrash_direct'
alias msfconsole='msfdb init && msfconsole'

# 关闭vim Ctrl+q 挂起功能
stty -ixon
# rvm 启动工具
source /etc/profile.d/rvm.sh

# rvm gem 编码问题
# https://stackoverflow.com/questions/4975973/gem-update-unable-to-convert-xe7-to-utf-8-in-conversion-from-ascii-8bit-to-u
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
unset LC_ALL

# pipenv 自动补全
eval "$(pipenv --completion)"

