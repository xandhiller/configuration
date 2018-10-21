set nocompatible
syntax on

set tabstop=2
set shiftwidth=2
set expandtab
colorscheme industry

" ignore files vim doesnt use
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
set mouse=a

" confirm if user wants to save a file instead of error
set confirm

" command window height to 2 lines
set cmdheight=1

set autoindent
set linebreak

" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" show line numbers
" 
set number
set background=dark
set updatetime=50


" ------ PLUG-INS
set rtp+=~/.vim/bundle/Vundle.vim/ 
" run time path for vundle to handle plug-ins

filetype off
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'     
" plugin manager

if !has('gui_running')
  set t_Co=256
endif

Plugin 'itchyny/lightline.vim'    
" status line plugin
  let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

Plugin 'scrooloose/nerdtree'      
" file viewer                  [ctrl+N]
	" open a NERDTree automatically when vim starts up if no files were specified
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc()==0 && !exists("s:std_in") | NERDTree | endif
	" close NERDTree when its the only existing window
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	" set shortcut to open nerdtree
	map <C-n> :NERDTreeToggle<CR>

Plugin 'xuhdev/vim-latex-live-preview'
  let g:livepreview_previewer = 'okular'

set runtimepath+=$HOME/UltiSnips
" Track the engine.
Plugin 'SirVer/ultisnips'

"Plugin 'Valloric/YouCompleteMe'
"  let g:ycm_semantic_triggers = {'c' : ['re!.']}


" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

nnoremap Q $
vnoremap Q $
nnoremap <F3> <Nop>
nnoremap <F4> <Nop>
nnoremap <F5> <Nop>
inoremap <F3> ^
inoremap <F4> _
inoremap <F9> 0
nnoremap <F9> 0
vnoremap <F9> 0
inoremap <F10> $
nnoremap <F10> $
vnoremap <F10> $
inoremap <F11> {
nnoremap <F11> /{<Enter>
vnoremap <F11> <Nop>
inoremap <F12> }
nnoremap <F12> /}<Enter>
vnoremap <F12> <Nop>

" Hardcore Vim
nnoremap <Home> <Nop>
nnoremap <End> <Nop>
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
vnoremap <Right> <Nop>
vnoremap <Left> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>

" Screen Adjustments
inoremap <F8> <Esc>zti
inoremap <F6> <Esc>zbi
inoremap <F7> <Esc>zzi
nnoremap <F8> zt
nnoremap <F6> zb
nnoremap <F7> zz
inoremap <F5> $
nnoremap <F5> i$<Esc>
vnoremap <F8> <Nop>
vnoremap <F6> <Nop>
vnoremap <F7> <Nop>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<F1>"
let g:UltiSnipsJumpBackwardTrigger="<F2>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'shime/vim-livedown'
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1 

" the port on which Livedown server will run
let g:livedown_port = 1337

" the browser to use
let g:livedown_browser = "google-chrome"

"Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'jdsimcoe/abstract.vim'

Plugin 'junegunn/fzf'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

" ------ SHORTCUT FILES
source ~/GitHub/configuration/texShortcuts.vim
source ~/GitHub/configuration/pythonShortcuts.vim
source ~/GitHub/configuration/vimGeneralShortcuts.vim

inoremap  `m <esc>:call ToggleMATH()<CR>
nnoremap  `m :call ToggleMATH()<CR>

" Highlight on 80 character limit.
" C
autocmd FileType c highlight OverLength ctermbg=red ctermfg=white guibg=#AA3333
autocmd FileType c match OverLength /\%81v.\+/
" Python
autocmd FileType py highlight OverLength ctermbg=red ctermfg=white guibg=#AA3333
autocmd FileType py match OverLength /\%81v.\+/
" Julis a
autocmd FileType jl highlight OverLength ctermbg=red ctermfg=white guibg=#AA3333
autocmd FileType jl match OverLength /\%81v.\+/
" C++
autocmd FileType cpp highlight OverLength ctermbg=red ctermfg=white guibg=#AA3333
autocmd FileType cpp match OverLength /\%81v.\+/

set colorcolumn=80
highlight ColorColumn ctermbg=8
set number relativenumber
set cursorline
highlight CursorLine cterm=NONE ctermbg=grey ctermfg=NONE
highlight Cursor guibg=brightgreen guifg=white
