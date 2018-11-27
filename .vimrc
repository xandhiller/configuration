" ------------------------------------------------------------------------------
"  APPEARANCE [start]
" ------------------------------------------------------------------------------
set nocompatible
syntax on

" Make tabs input two spaces.
set tabstop=2
set shiftwidth=2
set expandtab

" Colourscheme
colorscheme pablo

" Highlight on 80 character limit and make it grey
set colorcolumn=80
highlight ColorColumn ctermbg=3
highlight Visual cterm=reverse ctermbg=NONE

" Give relative line numbers
set number relativenumber

" Highlight current line
hi CursorLine ctermbg=7
hi Cursor ctermbg=green ctermfg=blue
hi LineNr ctermfg=red
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

" lightline-vim neccessary config
set laststatus=2

" set mouse active
"set mouse=a

" confirm if user wants to save a file instead of error
set confirm

" command window height to 2 lines
set cmdheight=1

set autoindent
set linebreak

" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Time between no edit and .swp file being written.
set updatetime=1000

" ------------------------------------------------------------------------------
"  APPEARANCE [end]
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
"  PLUG-INS [start]
" ------------------------------------------------------------------------------

" run time path for vundle to handle plug-ins
set rtp+=~/.vim/bundle/Vundle.vim/ 

filetype off
call vundle#begin()

" plugin manager
Plugin 'VundleVim/Vundle.vim'     

if !has('gui_running')
  set t_Co=256
endif

Plugin 'itchyny/lightline.vim'    
" status line plugin
  let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

Plugin 'scrooloose/nerdtree'      
	" open a NERDTree automatically when vim starts up if no files were specified
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc()==0 && !exists("s:std_in") | NERDTree | endif
	" close NERDTree when its the only existing window
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	" Shortcut to open nerdtree
	map <C-n> :NERDTreeToggle<CR>

Plugin 'xuhdev/vim-latex-live-preview'
  let g:livepreview_previewer = 'okular'

Plugin 'Valloric/YouCompleteMe'

" Fuzzy file finder
Plugin 'junegunn/fzf'

" 'Surround' command
Plugin 'tpope/vim-surround'

" 'Repeat' command to repeat plugin behaviour.
Plugin 'tpope/vim-repeat'
Plugin 'JuliaEditorSupport/julia-vim'
" Nord Vim
" Plugin 'articicestudio/nord-vim'


call vundle#end()
filetype plugin indent on

" Turn off YouCompleteMe (1==OFF, 0==ON)
let g:loaded_youcompleteme = 1

highlight Visual cterm=reverse

" ------------------------------------------------------------------------------
"  PLUG-INS [end]
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
"  SHORTCUTS [start]  
" ------------------------------------------------------------------------------

" Source shortcut files. 
source ~/GitHub/configuration/texShortcuts.vim
source ~/GitHub/configuration/pythonShortcuts.vim
source ~/GitHub/configuration/vimGeneralShortcuts.vim

" Make it easier to source vimrc within vim.
inoremap <F5>   <Esc>:source<Space>~/.vimrc<CR>i
nnoremap <F5>   :source<Space>~/.vimrc<CR>
vnoremap <F5>   <Esc>:source<Space>~/.vimrc<CR>

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

" Moving around windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Resizing windows
nnoremap <C-y> <C-w><
nnoremap <C-u> <C-w>+
nnoremap <C-i> <C-w>-
nnoremap <C-o> <C-w>>
" Speed up splits
nnoremap <C-n> <Esc>:vsp<Space>
nnoremap <C-m> <Esc>:sp<Space>

" ------------------------------------------------------------------------------
"  SHORTCUTS [end]
" ------------------------------------------------------------------------------
