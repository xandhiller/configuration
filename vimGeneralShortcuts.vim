" ------ GENERAL VIM SHORTCUTS
"  

" ------ NORMAL MODE SHORTCUTS
vnoremap `` /<++><Enter>
vnoremap ~~ /++><Enter>Nh
nnoremap `` /<++><Enter>
nnoremap ~~ /++><Enter>Nh
nnoremap `1 <Esc>/++><Enter>h"_c4l
nnoremap `vtx :vsplit<Space>~/GitHub/vimrc/texShortcuts.vim<Enter>
nnoremap `vpy :vsplit<Space>~/GitHub/vimrc/pythonShortcuts.vim<Enter>
nnoremap `vvim :vsplit<Space>~/GitHub/vimrc/generalVimShortcut.vim<Enter>
nnoremap `vrc :vsplit<Space>~/.vimrc<Enter>
nnoremap `brc :vsplit<Space>~/.bashrc<Enter>
nnoremap <C-p> i<++><Esc>4h

" ------ INSERT MODE SHORTCUTS

inoremap `` <Esc>/<++><Enter>
inoremap ~~ <Esc>/++><Enter>Nhi
inoremap `1 <Esc>/++><Enter>h"_c4l
inoremap <C-p> <++><Esc>4hi

" ------ VISUAL MODE SHORTCUTS
vnoremap `` /<++><Enter>
vnoremap ~~ /++><Enter>Nh

" ------ Commenting in Different Languages
" Note that <C-_> is translated by vim to Ctrl+/
"
" Latex
autocmd FileType tex inoremap <C-_> <Esc>0i%<Space><Esc>0
autocmd FileType tex vnoremap <C-_> <Esc>0i%<Space><Esc>0
autocmd FileType tex nnoremap <C-_> <Esc>0i%<Space><Esc>0
" C
autocmd FileType c inoremap <C-_> <Esc>0i/*<Space><Esc>$a<Space>*/<Esc>0
autocmd FileType c vnoremap <C-_> <Esc>0i/*<Space><Esc>$a<Space>*/<Esc>0
autocmd FileType c nnoremap <C-_> <Esc>0i/*<Space><Esc>$a<Space>*/<Esc>0
" Python
autocmd FileType py inoremap <C-_> <Esc>0i#<Space><Esc>0
autocmd FileType py vnoremap <C-_> <Esc>0i#<Space><Esc>0
autocmd FileType py nnoremap <C-_> <Esc>0i#<Space><Esc>0
" Julia
autocmd FileType jl inoremap <C-_> <Esc>0i#<Space><Esc>0
autocmd FileType jl vnoremap <C-_> <Esc>0i#<Space><Esc>0
autocmd FileType jl nnoremap <C-_> <Esc>0i#<Space><Esc>0
" Shell
autocmd FileType sh inoremap <C-_> <Esc>0i#<Space><Esc>0
autocmd FileType sh vnoremap <C-_> <Esc>0i#<Space><Esc>0
autocmd FileType sh nnoremap <C-_> <Esc>0i#<Space><Esc>0

