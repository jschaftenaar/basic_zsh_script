eval "$(pyenv init -)"

autoload -U colors && colors
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST

something=''
PROMPT_USER='%F{81}%n%{$reset_color%}'
PROMPT_SEPARATOR_AT='%F{240}@%{$reset_color%}'
PROMPT_SEPARATOR_COLON='%F{240}:%{$reset_color%}'
PROMPT_HOST='%F{69}%m%{$reset_color%}'
PROMPT_DIR='%F{84}%~%{$reset_color%}'
PROMPT_BRANCH='%F{161}${vcs_info_msg_0_}%{$reset_color%}'
PROMPT="$PROMPT_USER$PROMPT_SEPARATOR_AT$PROMPT_HOST$PROMPT_SEPARATOR_COLON$PROMPT_DIR$PROMPT_BRANCH$ "

alias ls="ls --color=auto"
