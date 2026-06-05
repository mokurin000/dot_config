source ~/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
antidote load

autoload -Uz promptinit && promptinit && prompt pure

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export https_proxy="http://127.0.0.1:7890"
export http_proxy="${https_proxy}"

alias ls=exa

. .cargo/env

export UV_DEFAULT_INDEX=https://mirrors.bfsu.edu.cn/pypi/web/simple
export PULSE_SERVER=127.0.0.1

RPROMPT='$(git_super_status)'

