# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]> '
PS1='\u@\h \W > ' 

alias ls='ls --color=auto'
alias lsa='ls -lah --color=auto'
alias vrc='vim $HOME/.vimrc'
alias brc='vim $HOME/.bashrc'
alias blackjack='mono $HOME/cs_projects/blackjack.cs/blackjack.exe'
alias config='/usr/bin/git --git-dir=/home/oldman/cfg --work-tree=/home/oldman'
alias i3c='vim $HOME/.config/i3/config'
alias vimtex='cp $HOME/docs/texdocs/template/textemp.tex $HOME/docs/texdocs/temp/newfile.tex; vim $HOME/docs/texdocs/temp/newfile.tex'
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias pacs='sudo pacman -S'
alias pacr='sudo pacman -Rs'
alias pac='sudo pacman -Syu'
alias udb='sudo updatedb'
alias neofetch='clear; neofetch'
alias lock='$HOME/.config/i3lock.sh'

monitor() {
	MAXRES=$(xrandr | grep "$1" -A 1 | grep "0" | awk '{print $1}')
	echo $(xrandr --output "$1" --mode $MAXRES "$2" eDP-1)
}
