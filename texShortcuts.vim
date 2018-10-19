" ------ GENERAL TEX SHORTCUTS 
" General shortcuts for regular typing

" autocmd FileType tex inoremap <Tab> <Space><Space>
autocmd FileType tex inoremap <C-i> \textit{}<++><Esc>Bi
autocmd FileType tex inoremap <C-b> \textbf{}<++><Esc>Bi
autocmd FileType tex inoremap <C-t> <Enter><BS><BS>\begin{itemize}<Enter>\item<Space><Enter><BS><BS><BS><BS>\end{itemize}<Enter><BS><BS><++><Esc>2kA
autocmd FileType tex inoremap <C-\> <Esc>o\item<Space>


" Mathematics shortcuts to improve the experience of writing equations

" ------TEX MATH MODE

let g:MATHOn=0

function! ToggleMATH()
  if !g:MATHOn
    call MATH()
  else 
    call MATHOff()
  endif
endfunction

function! MATH()
  echo "Math macros ACTIVATED."
  let g:MATHOn=1
  inoremap  <C-i> \mathit{<++>}<++><esc>Bi
  inoremap  <C-b> \mathbf{<++>}<++><esc>Bi
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
endfunction

function! MATHOff()
  echo "Math macros DEACTIVATED."
  let g:MathOn=0
  inoremap <C-i> \textit{}<++><Esc>Bi
  inoremap <C-b> \textbf{}<++><Esc>Bi
  inoremap ;s ;s
  inoremap ;e ;e
  inoremap ;i ;i
  inoremap ;f ;f
  inoremap ;<space> ;<space>
  inoremap ;t ;t
  inoremap ;d ;d
  inoremap ;ol ;ol
  inoremap ;oL ;oL
endfunction


" Equation copy insert
autocmd FileType tex inoremap `e <Space>begin{equation}<Esc>0/begin{equation}<Enter>N0v/end{equation}<Enter>$yl/end{equation}<Enter>A<Enter><Enter><Esc>p2l/begin{equation}<Enter>dd1ki<++><Esc>2k$A<++><Esc>
" Equation copy normal
autocmd FileType tex nnoremap `e i<Space>begin{equation}<Esc>0/begin{equation}<Enter>N0v/end{equation}<Enter>$yl/end{equation}<Enter>A<Enter><Enter><Esc>p2l/begin{equation}<Enter>dd1ki<++><Esc>2k$A<++><Esc>

" autocmd FileType tex LLPStartPreview<Enter>
