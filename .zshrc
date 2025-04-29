# terminal prompt
NEWLINE=$'\n'
COLOR_DEF='%f'
#COLOR_MACHINE='%F{34}'
#COLOR_DIR='%F{179}'
#COLOR_BRANCH='%F{80}'
COLOR_MACHINE='%F{2}'
COLOR_DIR='%F{3}'
COLOR_BRANCH='%F{6}'
setopt PROMPT_SUBST ; PS1='${COLOR_MACHINE}%n@%m ${COLOR_DIR}%~${COLOR_BRANCH}$(__git_ps1 " (%s)")${COLOR_DEF}${NEWLINE}\$ '

# PATH
export PATH="/Applications/ARM/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3.0/bin:$PATH"
export PATH="$(brew --prefix llvm)/bin:$PATH"

# Git prompt
source ~/.config/git_prompt.sh

# ranger
alias rng='ranger'
export VISUAL=nvim

alias die='sudo shutdown -h now'

alias instruments='open /Applications/Xcode.app/Contents/Applications/Instruments.app'
alias gen-ctags='ctags --recurse=yes ~/code/redis'

alias diff='diff --color=always'
alias grep='grep --color=always'
alias ll='ls -al'
alias rcli='~/code/redis/src/redis-cli'
alias rserver='~/code/redis/src/redis-server'
alias cdredis='cd ~/code/redis'

# git auto-completion
autoload -Uz compinit && compinit

# ---------------------------------
# Last cmd
# ---------------------------------
neofetch
