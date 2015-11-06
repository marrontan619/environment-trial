# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# My aliases
alias gs='git svn'
#alias gk='gitk --all &'
#alias clip='xsel -i -b'


function ud () {
    if [ $# -ne 1 ]; then
        echo "不正な引数の数"
        return 0
    fi

    expr "$1" + 1 >/dev/null 2>&1
    if [ $? -ge 2 ]; then
        echo "不正な引数の型"
        return 0
    fi

    i=0
    until [ $i -ge $1 ]
    do
        cd ../
        i=`expr $i + 1`
    done
}

# source /usr/share/git-core/contrib/git-competion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# non-printable characters must be enclosed inside \[ and \]
PS1='\[\033]0;$MSYSTEM:${PWD//[^[:ascii:]]/?}\007\]' # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change color
PS1="$PS1"'\w'                 # current working directory
if test -z "$WINELOADERNOEXEC"
then
    PS1="$PS1"'$(__git_ps1)'   # bash function
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $

# Show executed time on history
HISTTIMEFORMAT='%y/%m/%d %H:%M:%S '