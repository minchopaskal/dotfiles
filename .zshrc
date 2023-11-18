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

# Git prompt
source ~/.config/git_prompt.sh

# ranger
alias rng='ranger'
export VISUAL=nvim

# ---------------------------------
# Last cmd
# ---------------------------------
neofetch
