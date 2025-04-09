# Prompt
function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}
export PS1="\[\033[32m\]\w\[\033[34m\]\$(parse_git_branch)\[\033[00m\]\n$ "

# ranger
alias rng='ranger'
export VISUAL=nvim

alias die='sudo shutdown -h now'

alias instruments='open /Applications/Xcode.app/Contents/Applications/Instruments.app'
alias gen-ctags='ctags --recurse=yes ~/code/redis'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -al'
alias rcli='~/code/redis/src/redis-cli'
alias rserver='~/code/redis/src/redis-server'

# ---------------------------------
# Last cmd
# ---------------------------------
neofetch
