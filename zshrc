# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR="emacs -nw"
export PAGER="most"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mgutz"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"


# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh

# fasd
eval "$(fasd --init auto)"

# zsh syntax highlight
typeset -A ZSH_HIGHLIGHT_STYLES
# To differentiate aliases from other command types
ZSH_HIGHLIGHT_STYLES[comment]='fg=blue,bold'

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias snake="/home/arthur/Projects/snake/snake"
alias mr_clean="~/Scripts/mr_clean_v2"
alias bye="shutdown 0"
alias l="ls -1"
alias battery="~/Scripts/battery.sh"
alias meteo="curl -s wttr.in"

# for fancy icons
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

e() { emacs "$@" &; disown "%emacs" }

function fixdate() {
    sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
}

#  todos
ccat "$HOME/todo.org"

alias geary="flatpak run org.gnome.Geary"
alias copy="xclip -selection clipboard"
alias ls="run_ls"
alias la="ls -a"
alias dir="run_dir"
alias vdir="run_vdir"
alias py="python3"
alias finder="/home/arthur/Projects/finder/finder.py"
alias signout="pkill -KILL -u $(whoami)"
alias markdown="tm"
#configuration
alias zshconfig="e /home/arthur/.zshrc"
alias i3config="e ~/.config/i3/config"
alias ne="emacs -nw"
# web dev
alias flow="yarn flow"
alias lint="yarn lint"

alias hr="hr _"
alias steve="/home/arthur/Projects/editor/steve"
alias zsh_history_fix="/home/arthur/Scripts/zsh_history_fix.sh"

# tek
alias clone="~/Scripts/my_clone.sh"
alias prepare_my_repo="~/Epitech/CPool/CPool_Day01_2018/prepare_my_repo.sh"

# next line for word definitions
# ~/Scripts/vocab
source ~/Scripts/prep.sh
alias h="cd ~/Harold/harold-web"
alias todos="echo \$(ag -c "TODO" src/ | wc -l) things to do"
alias config_sync="~/Scripts/config_sync.sh"
alias gotop="gotop --color=vice"
alias tty-clock="tty-clock -sc -C5"
alias cpl="g++ -Wall -Wextra -Werror *.cpp"
alias pipes="$HOME/Scripts/pipes"
alias poesie='cat ~/Documents/Poésie/baudelaire | lolcat'
alias norme='~/Scripts/NormEZ.rb'
alias cpuinfo="most /proc/cpuinfo"
alias aseprite="~/.local/bin/aseprite/aseprite"
alias d="fasd_cd -d"
alias simplescreenrecorder="simplescreenrecorder --no-systray"
alias rick="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"
alias gameoflife="~/Projects/gameOfLife/gameOfLife maps/blank.map"
alias cal="cal --monday"
