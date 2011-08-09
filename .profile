export PATH=~/bin:$PATH

export EDITOR=vim

export CLICOLOR="YES"
export GREP_OPTIONS="--color=auto"

alias sendself="sendmail daniel@lubarov.com"
alias ls="ls -F"
alias g="grep"
alias h="history"

# A clean disk usage summary for current directory
function duf {
  du -s * | sort -n | cut -f 2- | while read a; do du -sh $a; done
}
