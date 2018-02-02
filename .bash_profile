# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# GNU ls colors
if [ -x /usr/local/opt/coreutils/libexec/gnubin ]; then
    alias ls='ls --color=always'
fi

# Add friendly prompt + color
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '
export CLICOLOR=1

# Colorful less with syntax highlight
export LESS='-R' LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1

# Handy aliases
alias ll='ls -l'
alias la='ls -a'
alias lr='ls -R'
alias l='ls -lAtrh'
alias grep='grep --color=auto'
# less will get colors when piped
alias crep='grep --color=always'
alias egrep='egrep --color=auto'
alias resapache='sudo /usr/sbin/apachectl -k restart'
alias pippa='pip3 install'
alias refine='/Users/admin/apps/refine/refine &'
# git
alias kommit='git commit -am'
alias st='git status'

# Java
# export JAVA_HOME="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home" # 6
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_40.jdk/Contents/Home" # 7
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home" # 8

# Maven
alias mavenass='mvn clean assembly:assembly'

# Subversion
export SVN_EDITOR="/usr/local/bin/vi"

# History settings
export HISTCONTROL=ignoreboth HISTSIZE=2000 HISTFILESIZE=5000
# Uncomment the following for eternal history (buggy after some time)
#shopt -s histappend
#export HISTTIMEFORMAT="%F %T "
#PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo $$ $USER "$(history 1)" >> ~/.bash_eternal_history'
#eternalgrep () { grep "$1" ~/.bash_eternal_history; }

# Proper curl, file, find, tar, GNU core utils + Homebrew sbin + Python3 user packages
export PATH="/usr/local/opt/file-formula/bin:/usr/local/opt/curl/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/findutils/libexec/gnubin:/usr/local/opt/gnu-tar/libexec/gnubin:/usr/local/sbin:/Users/focs/Library/Python/3.6/bin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/opt/findutils/libexec/gnuman:/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"

# Useful to search Homebrew
export HOMEBREW_GITHUB_API_TOKEN="a5bacd91c1c1f733fdbb77f2d5f46283a5c98fbe"

# Pretty-print coloured JSON
j () { jq -C '.' "$1" | less; }
