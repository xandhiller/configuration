set nocompatible
syntax on
filetype off

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
colorscheme slate 


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
set cmdheight=2

set autoindent
set linebreak

" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" show line numbers
set number

set background=dark

" highlight cursor/current line
" set cursorline

set updatetime=100

" spell check on for specific file types
au FileType markdown,text setlocal spell spelllang=en

" run time path for vundle to handle plug-ins
set rtp+=~/.vim/bundle/Vundle.vim/

" script to switch between color schemes F8(next) shift+F8(previous) alt+F8(random)
" source ~/.vim/setcolors.vim

call vundle#begin()

" list of plug-ins
" (look later) --> http://sherifsoliman.com/2016/05/30/favorite-vim-plugins/
Plugin 'VundleVim/Vundle.vim'     " plugin manager

Plugin 'itchyny/lightline.vim'    " status line plugin

Plugin 'scrooloose/nerdtree'      " file viewer                  [ctrl+N]
	" open a NERDTree automatically when vim starts up
	" autocmd vimenter * NERDTree
	" open a NERDTree automatically when vim starts up if no files were specified
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc()==0 && !exists("s:std_in") | NERDTree | endif
	" close NERDTree when its the only existing window
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	" set shortcut to open nerdtree
	map <C-n> :NERDTreeToggle<CR>
	
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
  
Plugin 'xuhdev/vim-latex-live-preview'
  let g:livepreview_previewer = 'okular'

call vundle#end()


filetype plugin indent on

" ------ SHORTCUTS -------"

" inoremap <Tab><Tab> <Esc>/<++><Enter>"_c4l


" ------ TEX SHORTCUTS 
source ~/GitHub/vimrc/texShortcuts.vim
source ~/GitHub/vimrc/pythonShortcuts.vim
source ~/GitHub/vimrc/vimGeneralShortcuts.vim

