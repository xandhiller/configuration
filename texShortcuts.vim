" ------ GENERAL TEX SHORTCUTS ()
" General shortcuts for regular typing

autocmd FileType tex inoremap <Tab> <Space><Space>
autocmd FileType tex inoremap <C-i> \textit{}<Space><++><Esc>T{i
autocmd FileType tex inoremap <C-b> \textbf{}<Space><++><Esc>T{i
autocmd FileType tex inoremap <C-t> <Enter><BS><BS>\begin{itemize}<Enter>\item<Space><Enter><BS><BS><BS><BS>\end{itemize}<Enter><BS><BS><++><Esc>2kA
autocmd FileType tex inoremap <C-\> <Esc>o\item<Space>
autocmd FileType tex inoremap { {}<Esc>i
autocmd FileType tex inoremap [ []<Esc>i

" ------ MATH TEX SHORTCUTS (;)
" Mathematics shortcuts to improve the experience of writing equations

autocmd FileType tex inoremap <C-e> \begin{equation}<Enter><Tab><Enter><Esc>0i\end{equation}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap $ $$<Esc>i<Space><Esc>i

