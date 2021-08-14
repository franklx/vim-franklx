let g:pymode_virtualenv = 0

autocmd FileType python setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with formatoptions=roq foldmethod=indent
let python_highlight_all = 1
"let python_version_2 = 1

nnoremap <silent> <Leader>ph :call franklx#InsertPyHeader()<CR>
nnoremap <silent> <Leader>ml :call franklx#AppendModeline()<CR>
