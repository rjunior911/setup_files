# Path to your oh-my-zsh installation.
export ZSH=/home/joseph/.oh-my-zsh
source ~/antigen.zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnoster"
#ZSH_THEME="solarized"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
	DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
	#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
	#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(compleat gitfast pip python scala sudo tmux vi-mode zsh-256color)
#lein gem cabal 

# User configuration
DEFAULT_USER=joseph

# Sets the Mail Environment Variable
MAIL=/var/spool/mail/joseph && export MAIL
EMAIL=robert.joseph.rennie@gmail.com && export EMAIL 

#powerline
#powerline-daemon -q
#if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
				#source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

#tmux plugin
ZSH_TMUX_AUTOSTART=false
ZSH_TMUX_AUTOCONNECT=true
ZSH_TMUX_AUTOQUIT=false

#tmuxinator stuff
#alias mux=tmuxinator

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias mu='mupdf '
alias em='emacs '
alias gv='gvim '
alias gcal='gvim -s ~/.gcal.vim'
alias mma='mathematica '
alias bm='bookmark '
alias down='sudo pm-suspend '
alias goodnight='sudo pm-suspend '
alias psudo='sudo env PATH="$PATH"'



export GIT_PS1_SHOWDIRTYSTATE=1 
export PS1="\[\033[01;34m\]\W\$(__git_ps1)$ \[\033[00m\]"
#They added this line, not you
#export PATH="/home/joseph/.bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

 #Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#bindkey \\C-R history-incremental-search-backward

alias -s tex=vim
alias -s pdf=mu

source /home/joseph/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/joseph/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^R' zaw-history
#zaw
source $HOME/zaw/zaw.zsh

#extra bookmarks
#TODO update these for new google drive setup
export PATH="$PATH:/home/joseph/robert.joseph.rennie@gmail.com/Workdesk/PI4/BertiniLinux64_v1.5/bin/:/opt/texbin/:$HOME/.rvm/bin:~/.cabal/bin/" # Add RVM to PATH for scripting
#source git-prompt.sh
#export LD_LIBRARY_PATH=/usr/local/cuda-6.5/lib64:$LD_LIBRARY_PATH
export SAGE_ROOT=$HOME/SageMath/
export PATH=/usr/local/cuda-6.0/bin:$PATH
export PATH=/usr/local/texlive/2016/bin/x86_64-linux/:$PATH
#export LD_LIBRARY_PATH=/usr/local/cuda-6.0/lib64:$LD_LIBRARY_PATH
#export PATH=/usr/lib/nvidia\-304/:$PATH
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/SageMath:$PATH
export TEXINPUTS=$TEXINPUTS:.:$SAGE_ROOT/local/share/texmf//:$TEX_TEMPLATES//
export BASHRC=/etc/bash.bashrc
export ZRC=$HOME/.zshrc
export MATH_WORK=~/robert.joseph.rennie@gmail.com/Workdesk/Math
export ALG=$MATH_WORK/Algebra
export TOP=$MATH_WORK/Topology
export CA=$MATH_WORK/ComplexAnalysis
export COMB=$MATH_WORK/Combinatorics
export MATH_LIB=~/robert.joseph.rennie@gmail.com/Library/Math
export ALG_LIB=$MATH_LIB/Algebra
export TOP_LIB=$MATH_LIB/Topology
export CA_LIB=$MATH_LIB/ComplexAnalysis
export COMB_LIB=$MATH_LIB/Combinatorics
export PI4=~/robert.joseph.rennie@gmail.com/Workdesk/PI4/
#export SPI=~/robert.joseph.rennie@gmail.com/Workdesk/SPI/

export TEX_MATH_DICT=~/.vim/ftplugin/latex-suite/dictionaries/math
export TEX_RC=~/.vim/ftplugin/tex.vim 
export ATP_RC=~/.atprc.vim
#export SNIPPETS=~/.vim/bundle/snipMate/snippets/
export THE=~/robert.joseph.rennie@gmail.com/Workdesk/Reed/2014/Thesis/
export TH=$THE/Work/DraftOne/ThesisOutline.tex
#export HIST=~/robert.joseph.rennie@gmail.com/Workdesk/HistoryOfRace/
#export REP=~/robert.joseph.rennie@gmail.com/Workdesk/RepresentationTheory/
#export GRAD=~/robert.joseph.rennie@gmail.com/GradApps/
#export PHI=~/robert.joseph.rennie@gmail.com/Workdesk/PhilComp/
source bookmarks

antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle gradle
antigen bundle alexrochas/zsh-extract
antigen bundle alexrochas/zsh-vim-crtl-z
antigen bundle alexrochas/zsh-git-semantic-commits
antigen bundle alexrochas/zsh-path-environment-explorer

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# You probably will want to install powerline fonts https://github.com/powerline/fonts
antigen theme robbyrussell/oh-my-zsh themes/agnoster
#antigen theme KuoE0/oh-my-zsh-solarized-powerline-theme solarized-powerline

# Tell antigen that you're done.
antigen apply
