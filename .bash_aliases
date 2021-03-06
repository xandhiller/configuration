alias manim='clear && sudo MANIM_PATH=/home/polluticorn/bin/manim docker-compose run manim'

#alias rofi='rofi -font "Monospace 18" -bg "#222222" -fg "#FFFFFF"'

alias pfms='cd /home/alex/Documents/spr_19/pfms/pfms-2019s-xandhiller'
alias snips='nvim ~/.config/UltiSnips/'
alias vim='nvim'
alias vi='nvim'
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ccat='highlight --force --out-format=ansi --quiet'
alias ag='sudo apt-get'
alias agi='sudo apt-get install'
alias ags='apt-cache search'
alias ref='source ~/.config/fish/config.fish'
alias r='ranger'
alias e='exit'
alias c='clear'
alias l='ls -1'
alias la='ls -1a'
alias lsa='la -a'

# CLI Program Shortcuts
alias yt='youtube-dl --add-metadata -ic' # Download video
alias yta='youtube-dl --add-metadata -xic' # Download audio
alias tr='tree -L 3'
alias record='ffmpeg -f x11grab -s 2736x1824 -i :0.0 ~/Videos/`date +"%Y_%m_%d_%H_%M_%s"`.mkv'
alias mdc='mathdoc'
alias vlib='vim /usr/share/vim/vim74/doc/'
alias scs='scrot -s' # Take selection screenshot
alias txb='cd ~/Documents/Textbooks'

# Config Files
alias brc='vim ~/.bashrc'
# alias frc='vim ~/.config/fish/config.fish'
alias rrc='vim ~/.config/rofi/config'
alias vrc='nvim ~/.config/nvim/init.vim'
alias it='vim ~/.config/i3/config'
alias ebsct='vim ~/.bash_aliases'
alias ekr='vim ~/GitHub/configuration/keyRemaps.sh'
alias zrc='vim ~/.config/zathura/zathurarc'
alias br='vim /sys/class/backlight/intel_backlight/brightness'
alias scr='cd ~/.scripts'
alias fundc='cd ~/Documents/fundc/'
alias esc='vim ~/.scripts'
alias tmx='vim ~/.tmux.conf'
alias xdf='vim ~/.Xdefaults && xrdb -merge ~/.Xdefaults'
alias xrs='vim ~/.Xresources && xrdb -merge ~/.Xresources'
alias vwk='vim ~/vimwiki/index.md'
alias vw='vim ~/vimwiki/index.md'
alias itb='vim ~/.config/i3blocks/config'
alias ebv='ebook-viewer --detach'

# Template Shortcuts
alias txa='cp ~/Templates/tex/article.tex'
alias etxarticle='vim ~/Templates/tex/article.tex' # Edit article template.
alias etxmath='vim ~/Templates/tex/math.tex'
alias etxmacros='vim ~/Templates/tex/texMacros.tex'
alias emathdoc='vim ~/.scripts/mathdoc'
alias evmath='vim ~/.scripts/math.vim'

# Custom Scripts
alias touchpad='bash ~/.scripts/touch_toggle.sh'
#alias battery='bash ~/.scripts/battery'
alias jw='~/.scripts/setupJl' # Setup julia prototyping workspace

# Viewing shorcuts in terminal
alias bsct='ccat ~/.bash_aliases'
alias kr='ccat ~/GitHub/configuration/keyRemaps.sh'
alias dict='dict -d gcide'
alias thes='dict -d moby-thesaurus'

alias labSetup='~/.scripts/twoScreens.sh && sudo ~/.scripts/keyRemaps'
alias snip='nvim ~/.config/UltiSnips/'
alias ':q'='exit'
alias ':wq'='exit'
alias ':e'='nvim'
alias 'env'='echo "No"'
