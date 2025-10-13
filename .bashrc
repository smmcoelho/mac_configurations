
# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=90000
HISTFILESIZE=90000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.alias_linux ]; then
    . ~/.alias_linux
fi

if [ -f ~/.alias_tv_iot ]; then
    . ~/.alias_tv_iot
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


##############
## personal ##
##############

COLOR_NORM="\e[00m"
COLOR_RED="\e[31m"
COLOR_GREEN="\e[32m"
COLOR_YELLOW="\e[33m"
COLOR_CYAN="\e[36m"

eblue()
{
    echo -e ${COLOR_BLUE}"$@"${COLOR_NORM}
}
egreen()
{
    echo -e ${COLOR_GREEN}"$@"${COLOR_NORM}
}
ered()
{
    echo -e ${COLOR_RED}"$@"${COLOR_NORM}
}
ecyan()
{
    echo -e ${COLOR_CYAN}"$@"${COLOR_NORM}
}
eyellow()
{
    echo -e ${COLOR_YELLOW}"$@"${COLOR_NORM}
}


#setup grep color highlight
# Background Colours: 40 Black, 41 Red, 42 Green, 43 Yellow, 44 Blue, 45 Magenta, 46 Cyan, 47 White
# Foreground Colours: 30 Black, 31 Red, 32 Green, 33 Yellow, 34 Blue, 35 Magenta, 36 Cyan, 37 White
export GREP_COLOR=33


#alias ;s='ls'
#alias ls='ls -lrth'
alias vf='cd'
alias xs='cd'
alias gep='grep'
alias gerp='grep'
alias ld='ls'

alias cp='cp -vi'
alias mv='mv -vi'
alias grep='grep --color'
alias zgrep='zgrep --color'
alias tree='tree -Csu'
alias ..='cd ..'
alias lr='ls -lrth'
alias rm='rm -I '
alias lf='ls -lth'
alias duOrder='find . -type f  -exec du -h {} + | sort -hr ' #| head -5
alias cleanBuildLogs='rm -rf build_x86_64_Ubuntu_*'

alias of='openfile'


# source vimrc
alias sz='. ~/.bashrc.bck'

#scoelho
if [ "$UID" -eq 0 ] ; then # root user
   #export PS1='\[\033[92m\]\t \[\033[31m\]\u@\h \[\033[32m\]$PWD\[\033[00m\]> '
   export PS1='\[\033[31m\]\t \[\033[36m\]\u@\h \[\033[31m\]$PWD\[\033[00m\]> '
else # normal user
   export PS1='\[\033[92m\]\t \[\033[36m\]\u@\h \[\033[32m\]$PWD\[\033[00m\]> '
fi
#root
#export PS1='\[\033[01;31m\]\t \[\033[0;36m\]\u@\h \[\033[01;31m\]$PWD\[\033[00m\]> '

#to open crontab with vim
export VISUAL=vim
export EDITOR=vim


function extract()      # Handy Extract Program.
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

function compress()
{
    dirPriorToExe=`pwd`
    dirName=`dirname $1`
    baseName=`basename $1`
 
    if [ -f $1 ] ; then
        echo "It was a file change directory to $dirName"
        cd $dirName
        case $2 in
          tar.bz2)
                    tar cjf $baseName.tar.bz2 $baseName
                    ;;
          tar.gz)
                    tar czf $baseName.tar.gz $baseName
                    ;;
          gz)
                    gzip $baseName
                    ;;
          tar)
                    tar -cvvf $baseName.tar $baseName
                    ;;
          zip)
                    zip -r $baseName.zip $baseName
                    ;;
            *)
                    echo "Method not passed compressing using tar.bz2"
                    tar cjf $baseName.tar.bz2 $baseName
                    ;;
        esac
        echo "Back to Directory $dirPriorToExe"
        cd $dirPriorToExe
    else
        if [ -d $1 ] ; then
            echo "It was a Directory change directory to $dirName"
            cd $dirName
            case $2 in
                tar.bz2)
                        tar cjf $baseName.tar.bz2 $baseName
                        ;;
                tar.gz)
                        tar czf $baseName.tar.gz $baseName
                        ;;
                gz)
                        gzip -r $baseName
                        ;;
                tar)
                        tar -cvvf $baseName.tar $baseName
                        ;;
                zip)
                        zip -r $baseName.zip $baseName
                        ;;
                *)
                    echo "Method not passed compressing using tar.bz2"
                tar cjf $baseName.tar.bz2 $baseName
                        ;;
            esac
            echo "Back to Directory $dirPriorToExe"
            cd $dirPriorToExe
        else
            echo "'$1' is not a valid file/folder"
        fi
    fi
    echo "Done"
    echo "###########################################"
}


alias vvim='vim -u /home/smotacoe/.vimrcmachine'


export PATH=$PATH:/home/smotacoe/bin


###########
## alias ##
###########
## setenv
#setenv  GREP_COLOR '33'


set HISTSIZE=90000
set HISTFILESIZE=90000

set history = 9999
############################
## set console ignorecase ##
############################
set autolist = ambiguous 
set complete = enhance 


# ask for comfirmation on 'rm *'
set rmstar
# cd to dir without typing 'cd'
#set implicitcd
#show symbolic links
set listlinks
# Switch off beep
set nobeep 


###########
## alias ##
###########
alias ls='ls --color'
alias grep='grep -i --color'
alias vf='cd'
alias xs='cd'
alias gep='grep'
alias gerp='grep'
alias ld='ls'
alias la='ls -a'
#alias cp 'cp -vi'
alias mv='mv -vi'
alias grep='grep --color'
alias zgrep='zgrep --color'
alias ..='cd ..'
alias ...='cd ../..'
alias lr='ls -lrth'
#alias rm 'rm -iI '
alias d='rm -rf'
alias lf='ls -lth'
alias vd='vimdiff'
alias duOrder='find . -type f  -exec du -h {} + | sort -hr '
alias sz='source ~/.alias_linux && source ~/.alias_tv_iot'
alias n='notify-send ${1}'
alias bin='cd ~/bin'
alias usefull='cd ~/usefull'
alias openBashConfigFile='vim /home/smotacoe/.tcshrc'


##########
## keys ##
##########
if [[ $- = *i* ]]
then
   # PAGE UP : search in history backwards for line beginning as current.
   bind '"\e[5~": history-search-backward'

   # PAGE DOWN : search in history forwards for line beginning as current.
   bind '"\e[6~": history-search-forward'
fi

# PAGE UP : search in history backwards for line beginning as current.
#bindkey    '^[[5~'   history-search-backward
#bind '"\e[5~": history-search-backward'

# PAGE DOWN : search in history forwards for line beginning as current.
#bindkey    '^[[6~'   history-search-forward
#bind '"\e[6~": history-search-forward'


