# Bash Program Customisations
alias ls="ls --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias ccat="highlight --force --out-format=ansi --quiet"
alias ag="sudo apt-get"
alias agi="sudo apt-get install"
alias mkdir="mkdir -pv"
alias ref="source ~/.bashrc"
alias r="ranger"
alias e="exit"
alias c="clear"

# CLI Program Shortcuts
alias yt="youtube-dl --add-metadata -ic" # Download video
alias yta="youtube-dl --add-metadata -xic" # Download audio
# TODO: Script alias po="" # Reads in pdf name and opens and supresses warnings.

# Config Files
alias brc="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"
alias it="vim ~/.config/i3/config"
alias ebsct="vim ~/GitHub/configuration/shortcuts.sh"  # Bash Shortcuts
alias etsct="vim ~/GitHub/configuration/texShortcuts.vim"
alias epsct="vim ~/GitHub/configuration/pythonShortcuts.vim"
alias evsct="vim ~/GitHub/configuration/vimGeneralShortcuts.vim"

# TeX Template Shortcuts
alias Txa="cp ~/GitHub/texTemplates/article.tex"
alias eTxa="vim ~/GitHub/texTemplates/article.tex" # Edit article template.
alias Txp="cp ~/GitHub/texTemplates/pres.tex"
alias eTxp="vim ~/GitHub/texTemplates/pres.tex"     #Edit presentation template

# Custom Scripts
alias touchpad="bash ~/.scripts/touch_toggle.sh"
alias battery="bash ~/.scripts/battery.sh"

# Viewing shorcuts in terminal
alias bsct="ccat ~/GitHub/configuration/shortcuts.sh"  # Bash Shortcuts
alias tsct="ccat ~/GitHub/configuration/texShortcuts.vim"  
alias psct="ccat ~/GitHub/configuration/pythonShortcuts.vim"  
alias vsct="ccat ~/GitHub/configuration/vimGeneralShortcuts.vim"  
alias itb="vim ~/.config/i3blocks/config"

alias tr="tree"
alias br="sudo vim /sys/class/backlight/intel_backlight/brightness"
