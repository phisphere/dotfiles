[ -z "$PS1" ] && return
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[m\] \[\e[1;32m\]\$ \[\e[m\]\[\e[0;37m\] '

# alias

alias ls='ls --color=auto'
eval `dircolors -b`
alias c='clear'
alias e='exit'

alias x='startx'
alias h='halt'
alias r='reboot'

alias zen='pmount /dev/sdb1'
alias zenu='pumount /dev/sdb1'

alias am='alsamixer'
alias ht='htop'
alias rt='rtorrent'
alias moc='mocp -T default'
alias mp='mplayer'
alias wc='weechat-curses'
alias mi='mitter -i cmd'

alias mkp='makepkg -c'
alias ex='extract'

alias et='amixer sset Master,0 96 & sh /usr/local/games/enemy-territory/et'
alias ut='amixer sset Master,0 96 & /home/verner/downloads/games/urbanterror/ioUrbanTerror.i386'

# extract

extract () {
if [ -f $1 ]; then
	case $1 in
             *.tar.bz2)   tar xjf $1	;;
             *.tar.gz)    tar xzf $1	;;
             *.bz2)       bunzip2 $1	;;
             *.rar)       unrar e $1	;;
             *.gz)        gunzip $1		;;
             *.tar)       tar xf $1		;;
             *.tbz2)      tar xjf $1	;;
             *.tgz)       tar xzf $1	;;
             *.zip)       unzip $1		;;
             *.Z)         uncompress $1	;;
             *.7z)        7z x $1		;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
	esac
else
	echo "'$1' is not a valid file"
fi
}

# bash completion

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# other

export OOO_FORCE_DESKTOP=gnome
