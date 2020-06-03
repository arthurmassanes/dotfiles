# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/Scripts/read_web.sh
source ~/Scripts/notify.sh
source ~/Scripts/prep.sh
source ~/Scripts/wifipwd.sh
source ~/Scripts/planning.sh
source ~/Scripts/hx.sh

#source ~/Scripts/bash-wakatime.sh

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export HISTSIZE="DEEZ_NUTS"
export PS1="\e[0;33m<\u@\W> \e[m"

# User specific aliases and functions
#LS_COLORS=$LS_COLORS:"*.c=01:"

alias sl="ls"
alias e="emacs -nw"
alias mr_clean="~/Scripts/mr_clean_v2"
alias prepare_my_repo="~/Epitech/CPool/CPool_Day01_2018/prepare_my_repo.sh"
alias bonjour="cowsay -f stegosaurus 'salut ça va?' | toilet -f term --gay;"
alias add="~/Scripts/infin_add"
alias clone="~/Scripts/my_clone.sh"
alias battery="~/Scripts/battery.sh"
alias brightness="~/Scripts/brightness.sh"
alias py="python3"
alias appearence="xfce4-appearance-settings"
alias bye="shutdown now"
alias ñs="ls"
alias norme="~/Scripts/NormEZ.rb"
alias wifilist="nmcli connection show"
alias snake=~/Desktop/snake/snake

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias l="ls -la"
alias meteo="curl -s wttr.in"
LS_COLORS=$(ls_colors_generator)

run_ls() {
	ls-i --color=auto -w $(tput cols) "$@"
}

run_dir() {
	dir-i --color=auto -w $(tput cols) "$@"
}

run_vdir() {
	vdir-i --color=auto -w $(tput cols) "$@"
}
alias ls="run_ls"
alias dir="run_dir"
alias vdir="run_vdir"steve=/home/arthur/Projects/editor/steve
