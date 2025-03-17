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
export PATH=$PATH:~/code/nand2tetris-solutions/tools/:~/code/bin
export PATH="$PATH:/Applications/ARM/bin"
export PATH=~/code/bin/c3c:$PATH
export PATH=/opt/homebrew/bin:$PATH

# Git prompt
source ~/.config/git_prompt.sh

# ranger
alias rng='ranger'
export VISUAL=nvim

alias die='sudo shutdown -h now'

alias instruments='open /Applications/Xcode.app/Contents/Applications/Instruments.app'
alias gen-ctags='ctags --recurse=yes ~/code/redis'

# ---------------------------------
# Last cmd
# ---------------------------------
neofetch
export PATH="/opt/homebrew/opt/openssl@3.0/bin:$PATH"
