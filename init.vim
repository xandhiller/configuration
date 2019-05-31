"  APPEARANCE/INPUT """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set tags=./tags,tags;
let mapleader=";"
colorscheme zellner
set nocompatible
set noshowmatch
set tabstop=4
set mouse=a
set shiftwidth=4
set expandtab
set splitright
set splitbelow
set number
set relativenumber
set confirm
set cmdheight=1
set autoindent
set linebreak
set ignorecase
set smartcase
set cursorline
set wildmenu
set nohlsearch
set breakindent
set updatecount=1
set updatetime=100
set colorcolumn=81
set shada='50,<1000,s100,:0,n~/nvim/shada
function! MyHighlights()
    hi Visual             cterm=none ctermfg=none ctermbg=254
    hi Todo               cterm=none ctermbg=237 ctermfg=3
    syn match   myTodo    contained   "\<\(TODO\|FIXME\|OPTIMISE\)"
    hi def link myTodo Todo
    hi ColorColumn          ctermbg=250
    hi LineNr               ctermfg=252 
    hi Folded               ctermfg=61   ctermbg=none
    hi VertSplit            ctermbg=246  ctermfg=246
    hi StatusLine           ctermbg=246  ctermfg=255
    hi StatusLineNC         ctermbg=246  ctermfg=255
    hi vCursor              ctermbg=1
    hi CursorLine           cterm=none   ctermbg=253
    hi CursorLineNr         cterm=bold   ctermfg=240    ctermbg=253
    hi String               ctermfg=35
    hi Number               ctermfg=134
    hi SignColumn           ctermbg=0
    hi SignatureMarkText    ctermfg=245  ctermbg=0
    hi Conceal              ctermfg=1    ctermbg=255
    hi Comment              ctermfg=246
    hi Identifier           ctermfg=62
    hi String               ctermfg=30
    hi Statement            ctermfg=124
    hi PreProc              ctermfg=98   cterm=none
    hi Todo                 ctermfg=59   ctermbg=255
endfunction

"  PLUG-INS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim/ 
filetype off
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'     
Plugin 'vim-scripts/TagHighlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips'
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsExpandTrigger= '<Tab>'
    let g:UltiSnipsJumpForwardTrigger = '<Tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
    let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/UltiSnips']
    inoremap <C-u> <Esc>:UltiSnipsEdit<CR>
    nnoremap <C-u> <Esc>:UltiSnipsEdit<CR>
    vnoremap <C-u> <Esc>:UltiSnipsEdit<CR>
Plugin 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
    set conceallevel=1
    let g:vimtex_matchparen_enabled=0
    "let g:tex_fast = 'M'
    let g:tex_conceal='abdmg'
Plugin 'scrooloose/nerdtree'      
    map <C-n> :NERDTreeToggle<CR><C-w>=
Plugin 'xuhdev/vim-latex-live-preview'
    let g:livepreview_previewer = 'zathura'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'JuliaEditorSupport/julia-vim'
    let g:latex_to_unicode_file_types = ".md" 
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
endfunction
Plugin 'kshenoy/vim-signature'
call vundle#end()
filetype plugin indent on
syntax on
call MyHighlights()
if !has('gui_running')
    set t_Co=256
endif


"  SHORTCUTS/MAPPINGS/ABREVIATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unmapping rubbish keys
nnoremap Q      <Nop>
vnoremap Q      <Nop>
vnoremap <F8>   <Nop>
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
" Compile the current document into markdown syntax pdf.
nnoremap <Leader>d :w<CR>:silent ! livemd.py %:p %:p<CR>:source $MYVIMRC<CR>
" Edit init.vim on the fly
nnoremap <Leader>vv :vsp $MYVIMRC<CR>
" Moving around windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Resizing windows
nnoremap <C-Left>  <C-w><
nnoremap <C-Down>  <C-w>+
nnoremap <C-Up>    <C-w>-
nnoremap <C-Right> <C-w>>
" Refresh vimrc
inoremap <F5>   <Esc>:source<Space>$MYVIMRC<CR>:echom "init.vim refreshed"<CR>i
nnoremap <F5>   <Esc>:source<Space>$MYVIMRC<CR>:echom "init.vim refreshed"<CR>
vnoremap <F5>   <Esc>:source<Space>$MYVIMRC<CR>:echom "init.vim refreshed"<CR>
" Copy and paste to the clipboard
set clipboard=unnamedplus
inoremap <C-y> <Nop>
nnoremap <C-y> <Nop>
vnoremap <C-y> "+y
inoremap <C-p> <Esc>"+pi
nnoremap <C-p> "+p
vnoremap <C-p> "+p
" Make saving quicker
nnoremap SS <Esc>:w<CR>
" Make moving around lines more intuitive
nnoremap H 0
vnoremap H 0
nnoremap L $
vnoremap L $
nnoremap K 0i<BS><Space><Esc>h
nnoremap v <C-v>
let g:EIGHTY=0
set colorcolumn=81
function! EIGHTYon()
    highlight ColorColumn ctermbg=254
endfunction
function! EIGHTYoff()
    highlight ColorColumn ctermbg=none
endfunction
function! EIGHTYtoggle()
    if !g:EIGHTY
        let g:EIGHTY=1
        call EIGHTYon()
    else
        let g:EIGHTY=0
        call EIGHTYoff()
    endif
endfunction
call EIGHTYtoggle()
call EIGHTYtoggle()
nnoremap <Leader>cl :call EIGHTYtoggle()<CR>
" Commenting out paragraphs or lines
" nnoremap <Leader>/ {j>ip0<C-v>}0kc#<Esc>
" nnoremap <Leader>? {j<C-v>}k0x<ip
" Run python file
au FileType python nnoremap <Leader>r <Esc>:w<CR>:! python3 %<CR>
au FileType python nnoremap <Leader>R <Esc>:w<CR>:! time python3 %<CR>
" Automatically make a notes file in the same firecotry as current file and 
"   open it in vsplit
nnoremap <Leader>nn :vsp %:p:h/_notes.md<CR>
" Turn off highlight search
nnoremap <Leader><CR> :noh<CR>
" Insert a line of space above and below the line you're on
nnoremap <Leader>o ko<Esc>jjO<Esc>k
nnoremap o o<Esc>
nnoremap O O<Esc>
" Change the character below the cursor to uppercase.
nnoremap <Leader>u vu
nnoremap <Leader>U vU
nnoremap <Leader>f zfip
nnoremap <Leader>e zD
nnoremap <Leader>E zE
nnoremap <Leader>F zfip}j
nnoremap <Leader>= <C-w>=
nnoremap <Leader>co :vsp col<CR>:source ~/.colorDemo.vim<CR>
nnoremap QQ :q!<CR>
nnoremap Y y$
" Navigating marks in a sane manner
nnoremap <Left> ['
vnoremap <Left> ['
nnoremap <Right> ]'
vnoremap <Right> ]'
"Replacing spaces with underlines in visual selection + the inverse
vnoremap <Leader>_ :s/\%V /_/g<CR>
vnoremap <Leader>- :s/\%V /-/g<CR>
nnoremap <Leader>_ :s/ /_/g<CR>
nnoremap <Leader>- :s/ /-/g<CR>
vnoremap <Leader><Space> :s/\%V_/ /g<CR>
nnoremap <Leader><Space> :s/_/ /g<CR>
" Bring up command history quicker
nnoremap <Leader>q q:
nnoremap <Leader>Q q:k<CR>
" Function keys being actually functional
" F1 - write only
nnoremap <F1> :w<CR>
inoremap <F1> <Esc>:w<CR>a
vnoremap <F1> <Esc>:w<CR>a
snoremap <F1> <Esc>:w<CR>a
nnoremap <Home> ?<++><CR>
vnoremap <Home> <Esc>?<++><CR>
inoremap <Home> <Esc>?<++><CR>
nnoremap <End> /<++><CR>
vnoremap <End> <Esc>/<++><CR>
inoremap <End> <Esc>/<++><CR>
nnoremap <C-t> <Esc>:LLPStartPreview<CR>
inoremap <C-t> <Esc>:LLPStartPreview<CR>a
nnoremap <Leader>F6 :vsp ~/.scripts/math.vim<CR>
nnoremap <F6> :source ~/.scripts/math.vim<CR>
" surround.vim is the best
nmap s ys
nmap ss yss
nmap si ysi
"Show Invisibles
nnoremap <Leader>i :set list!<CR>
" Hooks
"         ([)
"     (l) (;) (') 
"         (.)
" <Leader><Leader>    Place hook
inoremap <Leader><Leader> <++>
nnoremap <Leader><Leader> i<++><Esc>
vnoremap <Leader><Leader> <Esc>i<++><Esc>
"" <Leader>l     Eat previous hook and go into insert mode
inoremap <Leader>l <Esc>a<Esc>?<++><CR>lh"_c4l
nnoremap <Leader>l <Esc>a<Esc>?<++><CR>lh"_c4l
vnoremap <Leader>l <Esc>a<Esc>?<++><CR>lh"_c4l
" <Leader>'     Eat next hook and go into insert mode
inoremap <Leader>' <Esc>a<Esc>/++><CR>h"_c4l
nnoremap <Leader>' <Esc>a<Esc>/++><CR>h"_c4l
vnoremap <Leader>' <Esc>a<Esc>/++><CR>h"_c4l
" <Leader>[     Go to previous hook
inoremap <Leader>[ <Esc>?<++><CR>i
nnoremap <Leader>{ <Esc>?<++><CR>
vnoremap <Leader>{ <Esc>?<++><CR>
" <Leader>.     Go to next hook
inoremap <Leader>. <Esc>/<++><CR>
nnoremap <Leader>. <Esc>/<++><CR>
vnoremap <Leader>. <Esc>><CR>
" For syntax highlighting based on ctags.
nnoremap <F8> <Esc>:w<CR><Esc>:! ctags -R<CR><Esc>:UpdateTypesFile<CR>
inoremap <F8> <Esc>:w<CR><Esc>:! ctags -R<CR><Esc>:UpdateTypesFile<CR>
vnoremap <F8> <Esc>:w<CR><Esc>:! ctags -R<CR><Esc>:UpdateTypesFile<CR>
vnoremap <C-g> g<C-g>
inoremap <Leader>m <Esc>:! python3.7 /home/polluticorn/GitHub/grading/FOC/marker.py %<CR>
vnoremap <Leader>m <Esc>:! python3.7 /home/polluticorn/GitHub/grading/FOC/marker.py %<CR>
nnoremap <Leader>m <Esc>:! python3.7 /home/polluticorn/GitHub/grading/FOC/marker.py %<CR>


" FILETYPE SPECIFIC SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .md
augroup markdownSettings
    au FileType markdown set tabstop=4 shiftwidth=4
    au FileType markdown inoremap <M-8> ⋅
    au FileType markdown inoremap <M-7> ✓
    au FileType markdown inoremap <M-=> —
    au FileType markdown set listchars=eol:¬,tab:\▸\ ,trail:~,extends:>,precedes:<
    au FileType markdown set textwidth=80
    au FileType markdown set wrapmargin=0
    au FileType markdown set linebreak
augroup END
" .mathdoc
augroup mathdocSettings
    au BufRead *.mdc set syntax=tex
    au FileType mdc set textwidth=80
    au FileType mdc set wrapmargin=0
    au FileType mdc set linebreak
    au BufReadPost *.mdc source ~/.scripts/math.vim
    au BufReadPost *.mdc normal :LLPStartPreview<CR>
augroup END
" .c
augroup cSettings
    au FileType c call EIGHTYtoggle()
    au FileType c set shiftwidth=4
    au BufNewFile *.c read /home/polluticorn/GitHub/codeTemplates/c.c
    au FileType c inoremap <Leader>r <Esc>:w<CR><Esc>:! crun %<CR>
    au FileType c nnoremap <Leader>r <Esc>:w<CR><Esc>:! crun %<CR>
    au FileType c vnoremap <Leader>r <Esc>:w<CR><Esc>:! crun %<CR>
    au FileType c inoremap <Leader>/ <Esc>g^i/*<Space><Esc>g_a<Space>*/
    au FileType c nnoremap <Leader>/ <Esc>g^i/*<Space><Esc>g_a<Space>*/<Esc>
    au FileType c vnoremap <Leader>/ <Esc>g^i/*<Space><Esc>g_a<Space>*/<Esc>
    au FileType c inoremap <Leader>? <Esc>g^d3lg_2hd3lA
    au FileType c nnoremap <Leader>? <Esc>g^d3lg_2hd3l
    au FileType c vnoremap <Leader>? <Esc>g^d3lg_2hd3l
augroup END
" .py
augroup pySettings
    au FileType python inoremap <Leader>/ <Esc>g^i#<Space><Esc>$
    au FileType python nnoremap <Leader>/ <Esc>g^i#<Space><Esc>$
    au FileType python vnoremap <Leader>/ <Esc>g^i#<Space><Esc>$
    au FileType python inoremap <Leader>? <Esc>g^xx
    au FileType python nnoremap <Leader>? <Esc>g^xx
    au FileType python vnoremap <Leader>? <Esc>g^xx
    au BufReadPost *.py call EIGHTYtoggle()
    au FileType python set tabstop=4 shiftwidth=4
    au BufNewFile *.py read /home/polluticorn/GitHub/codeTemplates/py.py
augroup END
" .tex
augroup texSettings
    au FileType tex set listchars=eol:¬,tab:\▸\ ,trail:~,extends:>,precedes:<
    au FileType tex set textwidth=80
    au FileType tex set wrapmargin=0
    au FileType tex set linebreak
    au FileType tex normal zfip
augroup END
" .sh
augroup shSettings
augroup END
" cpp
augroup cppSettings
    au FileType cpp call EIGHTYtoggle()
    au FileType cpp set shiftwidth=4
    au BufNewFile *.cpp read /home/polluticorn/GitHub/codeTemplates/cpp.cpp
    " Comment
    au FileType cpp inoremap <Leader>/ <Esc>g^i//<Space><Esc>$
    au FileType cpp nnoremap <Leader>/ <Esc>g^i//<Space><Esc>$
    au FileType cpp vnoremap <Leader>/ <Esc>g^i//<Space><Esc>$
    " Uncomment
    au FileType cpp inoremap <Leader>? <Esc>g^xxx
    au FileType cpp nnoremap <Leader>? <Esc>g^xxx
    au FileType cpp vnoremap <Leader>? <Esc>g^xxx
    au FileType cpp inoremap <Leader>r <Esc>:w<CR><Esc>:! cpprun %<CR>
    au FileType cpp nnoremap <Leader>r <Esc>:w<CR><Esc>:! cpprun %<CR>
    au FileType cpp vnoremap <Leader>r <Esc>:w<CR><Esc>:! cpprun %<CR>
    au FileType cpp inoremap <Leader>b <Esc>:w<CR><Esc>:! cpprun % -build<CR>
    au FileType cpp nnoremap <Leader>b <Esc>:w<CR><Esc>:! cpprun % -build<CR>
    au FileType cpp vnoremap <Leader>b <Esc>:w<CR><Esc>:! cpprun % -build<CR>
augroup END

" Settings for plain text note taking/`sent` presentations
function! TextShortcuts()
  ab <==> ⟺ <Space>
  ab * ⋅
  ab alpha α
  ab beta β
  ab gamma γ
  ab tau τ
  ab Gamma Γ
  ab pi π
  ab sigma σ
  ab Sigma Σ
  ab ==> ⟹ <space>
endfunction
au BufReadPost *.sent call TextShortcuts()
"au BufReadPost *.sent nnoremap <Leader>r <Esc>:w<CR><Esc>:! sent %<CR>
au BufReadPost *.sent nnoremap <Leader>r :w<Esc>:silent ! sent %<CR>
au BufReadPost *.s call TextShortcuts()
au BufReadPost *.txt call TextShortcuts()

" VIM+TEX NOTES MODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap  <Leader>n <esc>:call ToggleNOTES()<CR>
nnoremap  <Leader>n :call ToggleNOTES()<CR>
let g:NOTES=0
function! NOTESon()
  let g:NOTES=1
  ab qanda \qanda{<++>}{<++>}
  ab code \begin{lstlisting}<CR><Space><Space><++><CR><BS>\end{lstlisting}
  echo "NOTE macros ACTIVATED."
  silent ! notify-send "NOTE macros ACTIVATED." -t 25
endfunction
function! NOTESoff()
  let g:NOTES=0
  abclear
  echo "NOTE macros DEACTIVATED."
  silent ! notify-send "NOTE macros DEACTIVATED." -t 25
endfunction
function! ToggleNOTES()
  if !g:NOTES
    call NOTESon()
  else
    call NOTESoff()
  endif
endfunction


" IGNORE FILES VIM DOESN'T USE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
