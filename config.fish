# Shortcuts for the terminal
source ~/GitHub/configuration/shortcuts.sh

# LSCOLORS


# Prompt colours
function fish_prompt
  set_color normal
  set_color "#666666"
  printf (pwd)
  set_color "#333333" --bold
  printf ' '
  set_color normal
  set_color "#000000"
  set_color normal
end

# Make sure there's no greeting
set fish_greeting
# Colours
set fish_color_normal           normal
set fish_color_command          "#225fd7"  --bold
set fish_color_param            00afff cyan
set fish_color_redirection      normal
set fish_color_comment          red
set fish_color_error            normal
set fish_color_escape           cyan
set fish_color_operator         cyan
set fish_color_quote            brown
set fish_color_autosuggestion   "#BBBBBB"
set fish_color_valid_path       

### Full list of colours
# set fish_color_normal                 
# set fish_color_command "#000080" --bold
# set fish_color_quote
# set fish_color_redirection
# set fish_color_end
# set fish_color_error
# set fish_color_param
# set fish_color_comment
# set fish_color_match
# set fish_color_selection
# set fish_color_search_match
# set fish_color_operator
# set fish_color_escape
# set fish_color_cwd
# set fish_color_autosuggestion
# set fish_color_user
# set fish_color_host
# set fish_color_cancel
# set fish_pager_color_prefix
# set fish_pager_color_completion
# set fish_pager_color_description
# set fish_pager_color_progress
# set fish_pager_color_secondary


# These necessary?
set VISUAL nvim
export VISUAL 
set EDITOR nvim
export EDITOR


# For vim-mode
  # switch $fish_bind_mode
  # case default
  #     set_color "#FF7777"
  #     echo -n "n"
  # case insert
  #     set_color "#85FF7A"
  #     echo -n "i"
  # case replace
  #     echo -n "r"
  # case visual
  #     set_color "#F3A0FF"
  #     echo -n "v"
  # end
  # set_color normal
  # set_color "#adaaa9" --bold
  # printf ' '
