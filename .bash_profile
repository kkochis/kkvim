
# =============
# General Stuff
# =============

alias ls="ls -GFh"

# set bash to vim mode
set -o vi

csview()
{
    local file="$1"
    sed "s/,/\t/g" "$file" | less -S
}

# ==============
# Stuff for Macs
# ==============
alias ll="ls -l"

# for dark termal themes:
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# for light terminal themes:
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
