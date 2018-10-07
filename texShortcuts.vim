" ------ GENERAL TEX SHORTCUTS 
" General shortcuts for regular typing

" autocmd FileType tex inoremap <Tab> <Space><Space>
autocmd FileType tex inoremap ;i \textit{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;b \textbf{}<Space><++><Esc>T{i
autocmd FileType tex inoremap <C-t> <Enter><BS><BS>\begin{itemize}<Enter>\item<Space><Enter><BS><BS><BS><BS>\end{itemize}<Enter><BS><BS><++><Esc>2kA
autocmd FileType tex inoremap <C-\> <Esc>o\item<Space>
autocmd FileType tex inoremap { {}<++><Esc>T{i
autocmd FileType tex inoremap [ []<++><Esc>T{i


" ------ MATH TEX SHORTCUTS 
" Mathematics shortcuts to improve the experience of writing equations

autocmd FileType tex inoremap <C-e> \begin{equation}<Enter><Enter><Esc>0i\end{equation}<Enter><Enter><++><Esc>3kA<Space><Space>

autocmd FileType tex inoremap $ $$<Space><++><Esc>F$i

" Equation copy insert
autocmd FileType tex inoremap `e <Space>begin{equation}<Esc>0/begin{equation}<Enter>N0v/end{equation}<Enter>$yl/end{equation}<Enter>A<Enter><Enter><Esc>p2l/begin{equation}<Enter>dd1ki<++><Esc>2k$A<++><Esc>
" Equation copy normal
autocmd FileType tex nnoremap `e i<Space>begin{equation}<Esc>0/begin{equation}<Enter>N0v/end{equation}<Enter>$yl/end{equation}<Enter>A<Enter><Enter><Esc>p2l/begin{equation}<Enter>dd1ki<++><Esc>2k$A<++><Esc>


