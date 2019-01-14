alias vim='nvim'
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ccat='highlight --force --out-format=ansi --quiet'
alias ag='sudo apt-get'
alias agi='sudo apt-get install'
alias ref='source ~/.bashrc'
alias r='ranger'
alias e='exit'
alias c='clear'
alias l='ls -1'
alias la='ls -1a'
alias lsa='la -a'

# CLI Program Shortcuts
alias yt='youtube-dl --add-metadata -ic' # Download video
alias yta='youtube-dl --add-metadata -xic' # Download audio
alias tr='tree'
alias record='ffmpeg -f x11grab -s 1600x900 -i :0.0 ~/Videos/screenRecording.mkv'
alias mdc='mathdoc'
alias vlib='vim /usr/share/vim/vim74/doc/'
alias scs='scrot -s' # Take selection screenshot

# Config Files
alias brc='vim ~/.bashrc'
alias vrc='nvim ~/.config/nvim/init.vim'
alias it='vim ~/.config/i3/config'
alias ebsct='vim ~/GitHub/configuration/shortcuts.sh'  # Bash Shortcuts
alias ekr='vim ~/GitHub/configuration/keyRemaps.sh'
alias zrc='vim ~/.config/zathura/zathurarc'
alias br='vim /sys/class/backlight/intel_backlight/brightness'
alias sc='cd ~/.scripts'
alias esc='vim ~/.scripts'
alias tmx='vim ~/.tmux.conf'
alias xdf='vim ~/.Xdefaults && xrdb -merge ~/.Xdefaults'
alias vwk='vim ~/vimwiki/index.md'
alias itb='vim ~/.config/i3blocks/config'

# Template Shortcuts
alias txa='cp ~/GitHub/texTemplates/article.tex'
alias etxarticle='vim ~/GitHub/texTemplates/article.tex' # Edit article template.
alias etxmath='vim ~/GitHub/texTemplates/math.tex'
alias etxmacros='vim ~/GitHub/texTemplates/texMacros.tex'
alias emathdoc='vim ~/.scripts/mathdoc'
alias evmath='vim ~/.scripts/math.vim'

# Custom Scripts
alias touchpad='bash ~/.scripts/touch_toggle.sh'
alias battery='bash ~/.scripts/battery.sh'
alias jw='~/.scripts/setupJl' # Setup julia prototyping workspace

# Viewing shorcuts in terminal
alias bsct='ccat ~/GitHub/configuration/shortcuts.sh' 
alias kr='ccat ~/GitHub/configuration/keyRemaps.sh'
