" ------ GENERAL TEX SHORTCUTS 
" General shortcuts for regular typing

autocmd FileType tex inoremap <C-\> <Esc>o\item<Space>

" Toggle MATH mode.
inoremap  `m <esc>:call ToggleMATH()<CR>
nnoremap  `m :call ToggleMATH()<CR>

" Mathematics shortcuts to improve the experience of writing equations

" ------TEX MATH MODE

let g:MATH=0

function! ToggleMATH()
  if !g:MATH
    call MATHon()
  else 
    call MATHOff()
  endif
endfunction

function! MATHon()
  echo "MATH macros ACTIVATED."
  let g:MATH=1
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

  " ---- Text formatting based shortcuts
  inoremap  ;ti \mathit{<++>}<++><esc>Bi 
  inoremap  ;tb \mathbf{<++>}<++><esc>Bi 
endfunction

function! MATHOff()
  echo "MATH macros DEACTIVATED."
  let g:MATH=0
  inoremap ;s ;s
  inoremap ;e ;e
  inoremap ;i ;i
  inoremap ;f ;f
  inoremap ;<space> ;<space>
  inoremap ;t ;t
  inoremap ;d ;d
  inoremap ;ol ;ol
  inoremap ;oL ;oL
  inoremap ;ti \textit{<++>}<++><esc>Bi 
  inoremap ;tb \textbf{<++>}<++><esc>Bi 
endfunction

" ------- NOTES MODE
"
" Toggle NOTES mode.
inoremap  `n <esc>:call ToggleNOTES()<CR>
nnoremap  `n :call ToggleNOTES()<CR>

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
