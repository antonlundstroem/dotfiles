# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/bbl/.oh-my-zsh"


###################################################
#						  #
#                ALIASES			  #
#						  #
###################################################
alias ytdl="~/.scripts/ytdl.sh"
alias 0x0="~/.scripts/0x0.sh"
alias syncer="python3 ~/.scripts/syncer/main.py"
alias bsr="~/.scripts/bsr.sh"
alias vrc="vim ~/.vimrc"
alias zrc="vim ~/.zshrc"
alias i3rc="vim ~/dotfiles/i3/config"
alias sch="cd ~/desk/school"
alias ntex="~/.scripts/mklatex.sh"
alias mkIIFE="~/.scripts/javascript/mkIIFE.sh"
alias postman="~/doc/Postman/Postman"
alias nosound="pulseaudio -k && sudo alsa force-reload"

###################################################
#						  #
#                THEME				  #
#						  #
###################################################

ZSH_THEME="robbyrussell"

###################################################
#						  #
#                PLUGINS			  #
#						  #
###################################################

plugins=(git vi-mode)



# vi mode
bindkey -v
export KEYTIMEOUT=1

source $ZSH/oh-my-zsh.sh
source /home/bbl/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
