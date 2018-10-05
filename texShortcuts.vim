" ------ GENERAL TEX SHORTCUTS (,)
" General shortcuts will be invoked with the comma: ,

autocmd FileType tex inoremap ,i \textit{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ,b \textbf{}<Space><++><Esc>T{i


" ------ MATH TEX SHORTCUTS (;)
" Mathematics shortcuts will be invoked with the semicolon: ;

autocmd FileType tex inoremap ;e \begin{equation}<Enter><Tab><Enter><Esc>0i\end{equation}<Enter><Enter><++><Esc>3kA
