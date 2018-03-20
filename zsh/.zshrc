# Path to your oh-my-zsh installation.
export ZSH=/Users/Keita/.oh-my-zsh

##set path for pyenv
export PATH="${PYENV_ROOT}/bin:$PATH"
export PYENV_ROOT="${HOME}/.pyenv"
export XDG_CONFIG_HOME="$HOME/.config"
ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#zsh-syntax-highlighting,zsh-autosuggestionsは外部プラグインのため，$ZSH/.oh-my-zsh/custom/plugin配下にインストール
plugins=(git colorize emoji-clock emoji osx themes zsh-syntax-highlighting zsh-autosuggestions)

# User configuration

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##--------------------------------       mysetting        -------------------------------- 
export LANG=ja_JP.UTF-8
#historyファイル指定
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000
SAVEHIST=10000

#コマンドじゃなければ cd する
setopt auto_cd
# 補完候補を一覧表示
setopt auto_list
# TAB で順に補完候補を切り替える
setopt auto_menu
# カッコの対応などを自動的に補完
setopt auto_param_keys
# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
# コマンドミスった時のcorrect
setopt correct
# 補完候補一覧でファイルの種別をマーク表示
setopt list_types
# 明確なドットの指定なしで.から始まるファイルをマッチ
setopt globdots
# ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt mark_dirs
# 語の途中でもカーソル位置で補完
setopt complete_in_word
# カーソル位置は保持したままファイル名一覧を順次その場で表示
setopt always_last_prompt
# ビープを鳴らさない
setopt nobeep
# vcs有効化
setopt prompt_subst
# #以降をコメントとして扱う
setopt interactive_comments
# ヒストリの共有
setopt share_history
# ヒストリに追加されるコマンドが古いものと同じなら古いものを削除
setopt hist_ignore_all_dups

##aliases
alias vim="nvim"
alias fs1="sshfs nakakei@murata.eb.waseda.ac.jp: mountpoint/"
alias fs2="sshfs nakakei@mercurius: mountpoint/"

eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
