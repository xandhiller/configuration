# Shortcuts for the terminal
source ~/GitHub/configuration/shortcuts.sh
# vi mode in bash
xrdb -merge ~/.Xdefaults
function fish_prompt
  switch $fish_bind_mode
  case default
      set_color "#FF7777"
      echo -n "[n]"
  case insert
      set_color "#85FF7A"
      echo -n "[i]"
  case replace
      echo -n "[r]"
  case visual
      set_color "#F3A0FF"
      echo -n "[v]"
  end
  set_color normal
  set_color "#adaaa9" --bold
  printf ' ['
  set_color normal
  set_color "#adaaa9"
  printf (pwd)
  set_color "#adaaa9" --bold
  printf '/] '
  set_color normal
  set_color "#515151"
  printf '['
  printf (date +%H:%M:%S)
  printf '] '
  set_color normal
end

set fish_greeting
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=" -R "
alias less='less -m -g -i -J --underline-special --SILENT'
alias more='less'
set VISUAL nvim
export VISUAL 
set EDITOR nvim
export EDITOR
