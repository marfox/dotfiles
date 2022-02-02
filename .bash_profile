# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# BASH completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Override Apple with proper GNU core utils, curl, file, find, grep
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:/opt/homebrew/opt/curl/bin:/opt/homebrew/opt/file-formula/bin:/opt/homebrew/opt/findutils/libexec/gnubin:/opt/homebrew/opt/grep/libexec/gnubin:$PATH"

###
# BEGIN: history on steroids
###

# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# Enable history appending instead of overwriting
shopt -s histappend

# See HISTSIZE and HISTFILESIZE in man bash
HISTSIZE=2000

# Display date and time stamps
HISTTIMEFORMAT="%F %T "

# Eternal history with its grep facility
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo $$ $USER "$(history 1)" >> ~/.bash_eternal_history'
eternalhistory () { grep "$1" ~/.bash_eternal_history; }

###
# END: history on steroids
###


###
# BEGIN: less is more
###

# Read ANSI colors
export LESS='-R'

# Lesspipe
export LESSOPEN="|/opt/homebrew/bin/lesspipe.sh %s"

# `cless` is the syntax-highlighted less
cless () {
    if [[ -f /opt/homebrew/bin/src-hilite-lesspipe.sh ]]; then
        lssopn=${LESSOPEN}
        LESSOPEN="|/opt/homebrew/bin/src-hilite-lesspipe.sh %s"
        less "$@"
        LESSOPEN=${lssopn}
    else
        echo "source-highlight script not found at /opt/homebrew/bin/src-hilite-lesspipe.sh"
        echo "You can install the package with:"
        echo "brew install source-highlight"
    fi
}

###
# END: less is more
###


###
# BEGIN: color the terminal
###

# Friendly prompt
# Layout: "user@host:workdir$ "
# Colors, all bold:
#   user@host = yellow
#   workdir = blue
#   ':' and '$' = white
# See colors list at https://unix.stackexchange.com/a/124408
PS1='\[\033[01;33m\]\u@\h\[\033[01;37m\]:\[\033[01;34m\]\w\[\033[01;37m\]\$\[\033[00m\] '
export CLICOLOR=1

# Colorful aliases
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# `cls` and `crep` are always-colored ls and grep
alias cls='ls --color=always'
alias crep='grep --color=always'

# Pretty-print colored JSON
j () { jq -C '.' "$1" | less; }

###
# END: colors!
###

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
