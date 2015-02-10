
nnoremap <silent> <Leader>ph :call franklx#InsertPyHeader()<CR>
nnoremap <silent> <Leader>ml :call franklx#AppendModeline()<CR>

autocmd BufNewFile *.py :call franklx#InsertPyHeader()
autocmd BufNewFile *.py :call franklx#AppendModeline()

nnoremap <silent> <Leader>cr :call franklx#CryptModeline()<CR>
autocmd BufNewFile *.pwdb se ft=yaml|:X|:call franklx#CryptModeline()

autocmd BufNewFile,BufRead *.tmpl setlocal ft=html syntax=jinja
autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
autocmd BufNewFile,BufRead *.html,*.htm setlocal ft=html syntax=jinja "ft=jinjahtml
autocmd BufNewFile,BufRead *.json setlocal ft=javascript
autocmd BufNewFile,BufRead *.kv setlocal ft=kivy
autocmd BufNewFile,BufRead *.pyj set filetype=rapydscript
