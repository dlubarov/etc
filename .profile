export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=~/bin:$PATH

#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
#export CLASSPATH=.:$HOME/Library/Java:$NEXT_ROOT/Library/Java:$NEXT_ROOT/System/Library/Java:$NEXT_ROOT/Network/Library/Java:$NEXT_ROOT/System/Library/Frameworks/JavaVM.framework/Classes/classes.jar:$NEXT_ROOT/System/Library/Frameworks/JavaVM.framework/Classes/ui.jar:/Users/dlubarov/bin/jasmin-2.4/jasmin.jar
#JAVA_OPTS="-Xms1024m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=256m"

export CLICOLOR="YES"

export EDITOR=vim

alias sendself="sendmail daniel@lubarov.com"
alias ls="ls -F"
alias h="hostname"
alias grep="grep --color=auto"
alias g="grep"
alias h="history"

# A clean disk usage summary for current directory
function duf {
  du -s * | sort -n | cut -f 2- | while read a; do du -sh $a; done
}
