""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  APPEARANCE/INPUT [end]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set splitright 
set splitbelow
colorscheme pablo
highlight Visual cterm=reverse
syntax on
set number relativenumber
set confirm
set cmdheight=1
set autoindent
set linebreak
set ignorecase
set smartcase
set updatetime=1000
set colorcolumn=80
highlight ColorColumn ctermbg=3
highlight Visual cterm=reverse ctermbg=NONE
hi CursorLine ctermbg=7
hi Cursor ctermbg=green ctermfg=blue
hi LineNr ctermfg=white
hi CursorLineNr cterm=bold ctermfg=red

" Ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  PLUG-INS [start]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim/ 
filetype off
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'     
Plugin 'scrooloose/nerdtree'      
	map <C-n> :NERDTreeToggle<CR>
Plugin 'xuhdev/vim-latex-live-preview'
  let g:livepreview_previewer = 'okular'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'junegunn/goyo.vim'
  let g:goyo_width=85
  let g:goyo_margin_top=0
  let g:goyo_margin_bottom=0
call vundle#end()
filetype plugin indent on

if !has('gui_running')
  set t_Co=256
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  PLUG-INS [end]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  SHORTCUTS/MAPPINGS/ABREVIATIONS[start]  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Source shortcut files. 
source ~/GitHub/configuration/vimGeneralShortcuts.vim

" Make it easier to refresh vimrc within vim.
inoremap <F5>   <Esc>:source<Space>$MYVIMRC<CR>i
nnoremap <F5>   :source<Space>$MYVIMRC<CR>
vnoremap <F5>   <Esc>:source<Space>$MYVIMRC<CR>

" Unmapping rubbish keys
nnoremap Q      <Nop>
vnoremap Q      <Nop>
vnoremap <F8>   <Nop>
vnoremap <F6>   <Nop>
vnoremap <F7>   <Nop>
nnoremap <F3>   <Nop>
nnoremap <F4>   <Nop>
inoremap <F3>   <Nop>
inoremap <F4>   <Nop>
inoremap <F9>   <Nop>
nnoremap <F9>   <Nop>
vnoremap <F9>   <Nop>
inoremap <F10>  <Nop>
nnoremap <F10>  <Nop>
vnoremap <F10>  <Nop>
inoremap <F11>  <Nop>
nnoremap <F11>  <Nop>
vnoremap <F11>  <Nop>
inoremap <F12>  <Nop>
nnoremap <F12>  <Nop>
vnoremap <F12>  <Nop>

" Hardcore Vim
nnoremap <Home>   <Nop>
nnoremap <End>    <Nop>
nnoremap <Right>  <Nop>
nnoremap <Left>   <Nop>
nnoremap <Up>     <Nop>
nnoremap <Down>   <Nop>
inoremap <Right>  <Nop>
inoremap <Left>   <Nop>
inoremap <Up>     <Nop>
inoremap <Down>   <Nop>
vnoremap <Right>  <Nop>
vnoremap <Left>   <Nop>
vnoremap <Up>     <Nop>
vnoremap <Down>   <Nop>

" Copy and paste to the clipboard
set clipboard=unnamedplus
inoremap <C-y> <Nop>
nnoremap <C-y> <Nop>
vnoremap <C-y> "+y
inoremap <C-p> <Esc>"+pi
nnoremap <C-p> "+p
vnoremap <C-p> "+p

" Customise functionality of goyo plugin (centering of text)
nnoremap <C-c> :Goyo<CR>
inoremap <C-c> <Esc>:Goyo<CR>i
vnoremap <C-c> <Esc>:Goyo<CR>
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  " ...
endfunction
function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  highlight CursorLineNr ctermfg=red
  " ...
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  SHORTCUTS [end]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ------ GENERAL TEX SHORTCUTS 
" General shortcuts for regular typing

autocmd FileType tex inoremap <C-\> <Esc>o\item<Space>

" Toggle MATH mode.
inoremap  `m <esc>:call ToggleMATH()<CR>
nnoremap  `m :call ToggleMATH()<CR>

" Mathematics shortcuts to improve the experience of writing equations

" ------TEX MATH MODE

let g:MATH=0

function! ToggleMATH()
  if !g:MATH
    call MATHon()
  else 
    call MATHOff()
  endif
endfunction

function! MATHon()
  echo "MATH macros ACTIVATED."
  let g:MATH=1
  inoremap  ;s \sum^{<++>}_{<++>}<++><esc>Bi
  inoremap  ;e \begin{equation}<Enter><Enter><Esc>0i\end{equation}<Enter><Enter><++><Esc>3kA<Space><Space><++><Esc>k0i
  inoremap  ;i \int^{<++>}_{<++>}<++><esc>Bi
  inoremap  ;f \frac{<++>}{<++>}<++><esc>Bi
  inoremap  ;<space> ^{<++>}_{<++>}<++><esc>/\^<CR>Ni
  inoremap  ;t \text{<++>}<++><esc>Bi
  inoremap  ;d \frac{d}{d<++>}\left( <++> \right)<esc>/frac<CR>Nhi
  
  " ---- More infrequent bindings are bound with "o" for "operation"
  inoremap  ;ol \Lapl{<++>}<++><esc>Bi
  inoremap  ;oL \Lapl{<++>} = \int^{\infty}_{0} <++> e^{st} dt = <++><esc>/Lapl<CR>Nhi

  " ---- Text formatting based shortcuts
  inoremap  ;ti \mathit{<++>}<++><esc>Bi 
  inoremap  ;tb \mathbf{<++>}<++><esc>Bi 
endfunction

function! MATHOff()
  echo "MATH macros DEACTIVATED."
  let g:MATH=0
  inoremap ;s ;s
  inoremap ;e ;e
  inoremap ;i ;i
  inoremap ;f ;f
  inoremap ;<space> ;<space>
  inoremap ;t ;t
  inoremap ;d ;d
  inoremap ;ol ;ol
  inoremap ;oL ;oL
  inoremap ;ti \textit{<++>}<++><esc>Bi 
  inoremap ;tb \textbf{<++>}<++><esc>Bi 
endfunction

" ------- NOTES MODE
"
" Toggle NOTES mode.
inoremap  `n <esc>:call ToggleNOTES()<CR>
nnoremap  `n :call ToggleNOTES()<CR>

let g:NOTES=0

function! ToggleNOTES()
  if !g:NOTES
    call NOTESon()
  else 
    call NOTESoff()
  endif
endfunction

function! NOTESon()
  let g:NOTES=1
  echo "NOTE macros ACTIVATED."
endfunction

function! NOTESoff()
  let g:NOTES=0
  echo "NOTE macros DEACTIVATED."
endfunction

" ------ GENERAL VIM SHORTCUTS
" ccc
" ------ NORMAL MODE SHORTCUTS
vnoremap `` /<++><Enter>
vnoremap ~~ /++><Enter>Nh
nnoremap `` /<++><Enter>
nnoremap ~~ /++><Enter>Nh
nnoremap `1 <Esc>/++><Enter>h"_c4l
nnoremap `vrc :vsplit<Space>~/.vimrc<Enter>
nnoremap `brc :vsplit<Space>~/.bashrc<Enter>
nnoremap <C-p> i<++><Esc>4h

" ------ INSERT MODE SHORTCUTS
inoremap `` <Esc>/<++><Enter>
inoremap ~~ <Esc>/++><Enter>Nhi
inoremap `1 <Esc>/++><Enter>h"_c4l
" Paste hook?

" ------ VISUAL MODE SHORTCUTS
vnoremap `` /<++><Enter>
vnoremap ~~ /++><Enter>Nh

