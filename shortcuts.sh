# Bash Program Customisations
alias open='xdg-open'
alias vim='nvim'
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ccat='highlight --force --out-format=ansi --quiet'
alias ag='sudo apt-get'
alias agi='sudo apt-get install'
alias mkdir='mkdir'
alias ref='source ~/.bashrc'
alias r='ranger'
alias e='exit'
alias c='clear'
alias t='tmux'
alias l='ls -1'

# CLI Program Shortcuts
alias yt='youtube-dl --add-metadata -ic' # Download video
alias yta='youtube-dl --add-metadata -xic' # Download audio

# Config Files
alias brc='vim ~/.bashrc'
alias vrc='nvim ~/.config/nvim/init.vim'
alias it='vim ~/.config/i3/config'
alias ebsct='vim ~/GitHub/configuration/shortcuts.sh'  # Bash Shortcuts
alias etsct='vim ~/GitHub/configuration/texShortcuts.vim'
alias epsct='vim ~/GitHub/configuration/pythonShortcuts.vim'
alias evsct='vim ~/GitHub/configuration/vimGeneralShortcuts.vim'
alias ekr='vim ~/GitHub/configuration/keyRemaps.sh'
alias zrc='vim ~/.config/zathura/zathurarc'

# Template Shortcuts
alias Txa='cp ~/GitHub/texTemplates/article.tex'
alias eTxa='vim ~/GitHub/texTemplates/article.tex' # Edit article template.
alias eTxm='vim ~/GitHub/texTemplates/math.tex'
alias Txp='cp ~/GitHub/texTemplates/pres.tex'
alias eTxp='vim ~/GitHub/texTemplates/pres.tex'     #Edit presentation template
alias jw='~/.scripts/setupJl'
alias mdc='mathdoc'
alias emdc='vim ~/.scripts/mathdoc'
alias emv='vim ~/.scripts/math.vim'

# Custom Scripts
alias touchpad='bash ~/.scripts/touch_toggle.sh'
alias battery='bash ~/.scripts/battery.sh'

# Viewing shorcuts in terminal
alias bsct='ccat ~/GitHub/configuration/shortcuts.sh'  # Bash Shortcuts
alias tsct='ccat ~/GitHub/configuration/texShortcuts.vim'  
alias psct='ccat ~/GitHub/configuration/pythonShortcuts.vim'  
alias vsct='ccat ~/GitHub/configuration/vimGeneralShortcuts.vim'  
alias itb='vim ~/.config/i3blocks/config'
alias kr='ccat ~/GitHub/configuration/keyRemaps.sh'

# Edit pLock
alias epk='vim ~/.scripts/pLock/pLock.sh'

alias tr='tree'
alias br='sudo vim /sys/class/backlight/intel_backlight/brightness'
alias sc='vim ~/.scripts'
alias tmx='vim ~/.tmux.conf'
alias xdf='vim ~/.Xdefaults && xrdb -merge ~/.Xdefaults'
alias vwk='vim ~/vimwiki/index.md'
alias vlib='vim /usr/share/vim/vim74/doc/'
alias la='ls -1a'
alias lsa='la -a'
alias scs='scrot -s' 

alias record='ffmpeg -f x11grab -s 1600x900 -i :0.0 ~/Videos/screenRecording.mkv'
# Ensure that all new scripts have the shebang and are created in ~/.scripts.
