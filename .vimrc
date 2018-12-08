""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  APPEARANCE/INPUT [end]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=";"
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
highlight Visual cterm=reverse  
hi CursorLine ctermbg=7
hi Cursor ctermbg=green ctermfg=blue
hi LineNr ctermfg=white
hi CursorLineNr cterm=bold ctermfg=red

nnoremap <Leader>m :w<CR>:silent ! compilemd %<CR>:source $MYVIMRC<CR>

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

autocmd FileType markdown set tabstop=4 shiftwidth=4
autocmd FileType wiki set tabstop=4 

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
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'JuliaEditorSupport/julia-vim'
  let g:latex_to_unicode_file_types = ".*" 
Plugin 'junegunn/goyo.vim'
  let g:goyo_width=85
  let g:goyo_margin_top=0
  let g:goyo_margin_bottom=0
  nnoremap <C-c> :Goyo<CR>
  inoremap <C-c> <Esc>:Goyo<CR>i
  vnoremap <C-c> <Esc>:Goyo<CR>
  function! s:goyo_enter()
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    set noshowmode
    set noshowcmd
    set scrolloff=999
  endfunction
  function! s:goyo_leave()
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    set showmode
    set showcmd
    set scrolloff=5
    highlight CursorLineNr ctermfg=red
  endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
Plugin 'vimwiki/vimwiki'
  let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
call vundle#end()
filetype plugin indent on


if !has('gui_running')
  set t_Co=256
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  SHORTCUTS/MAPPINGS/ABREVIATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make it easier to refresh vimrc within vim.

" Moving around windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" Resizing windows
noremap <C-y> <C-w><
noremap <C-u> <C-w>+
noremap <C-i> <C-w>-
noremap <C-o> <C-w>>

function! RefreshVimrc()
  inoremap <F5>   <Esc>:source<Space>$MYVIMRC<CR>i
  nnoremap <F5>   :source<Space>$MYVIMRC<CR>
  vnoremap <F5>   <Esc>:source<Space>$MYVIMRC<CR>
endfunction

call RefreshVimrc()
      
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

"vnoremap <Leader><Leader>/<++><Enter>
"nnoremap <Leader><Leader> /<++><Enter>
"nnoremap <Leader>1 <Esc>/++><Enter>h"_c4l
"inoremap <Leader><Leader> <Esc>/<++><Enter>
"inoremap <Leader>1 <Esc>/++><Enter>h"_c4l
"vnoremap <Leader><Leader> /<++><Enter>
" Paste hook?
"vnoremap ~~ /++><Enter>Nh
"nnoremap <S-Leader><S-Leader> iBLAH<Esc>
"nnoremap <S-Leader><S-Leader> /++><Enter>Nh
"inoremap ~~ <Esc>/++><Enter>Nhi
"vnoremap ~~ /++><Enter>Nh
"nnoremap <Leader>vrc :vsplit<Space>~/.vimrc<Enter>
"nnoremap <Leader>brc :vsplit<Space>~/.bashrc<Enter>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL TEX SHORTCUTS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd FileType tex inoremap <C-\> <Esc>o\item<Space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEX MATH MODE - shortcuts to improve the experience of writing equations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd FileType tex inoremap  <Leader>m <esc>:call ToggleMATH()<CR>

function! InputTex()
  nnoremap  <Leader>m :call ToggleMATH()<CR>
  nnoremap  <Leader>m :call ToggleMATH()<CR>
endfunction

autocmd FileType tex call InputTex()

"autocmd FileType tex 

let g:MATH=0
" MATH TOGGLE
function! ToggleMATH()
  if !g:MATH
    call MATHon()
  else 
    call MATHOff()
  endif
endfunction
" MATH ON
function! MATHon()
  echo "MATH macros ACTIVATED."
  let g:MATH=1
  inoremap  <Leader>s \sum^{<++>}_{<++>}<++><esc>Bi
  inoremap  <Leader>e \begin{equation}<Enter><Enter><Esc>0i\end{equation}<Enter><Enter><++><Esc>3kA<Space><Space><++><Esc>k0i
  inoremap  <Leader>i \int^{<++>}_{<++>}<++><esc>Bi
  inoremap  <Leader>f \frac{<++>}{<++>}<++><esc>Bi
  inoremap  <Leader><space> ^{<++>}_{<++>}<++><esc>/\^<CR>Ni
  inoremap  <Leader>t \text{<++>}<++><esc>Bi
  inoremap  <Leader>d \frac{d}{d<++>}\left( <++> \right)<esc>/frac<CR>Nhi
  " ---- More infrequent bindings are bound with "o" for "operation"
  inoremap  <Leader>ol \Lapl{<++>}<++><esc>Bi
  inoremap  <Leader>oL \Lapl{<++>} = \int^{\infty}_{0} <++> e^{st} dt = <++><esc>/Lapl<CR>Nhi
  inoremap  <Leader>ti \mathit{<++>}<++><esc>Bi 
  inoremap  <Leader>tb \mathbf{<++>}<++><esc>Bi 
endfunction
" MATH OFF
function! MATHOff()
  echo "MATH macros DEACTIVATED."
  let g:MATH=0
  unmap <Leader>s
  unmap <Leader>e
  unmap <Leader>i
  unmap <Leader>f
  unmap <Leader><space>
  unmap <Leader>t
  unmap <Leader>d
  unmap <Leader>ol
  unmap <Leader>oL
  unmap <Leader>ti \textit{<++>}<++><esc>Bi 
  unmap <Leader>tb \textbf{<++>}<++><esc>Bi 
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEX NOTES MODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap  <Leader>n <esc>:call ToggleNOTES()<CR>
nnoremap  <Leader>n :call ToggleNOTES()<CR>
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
