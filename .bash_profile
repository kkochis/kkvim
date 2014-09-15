# set bash to vim mode
set -o vi

csview()
{
    local file="$1"
    sed "s/,/\t/g" "$file" | less -S
}
