
map <silent> <leader>s :call franklx#DeleteTrailingWS()<CR>

nnoremap <silent> <Leader>cr :call franklx#CryptModeline()<CR>
autocmd BufNewFile *.pwdb se ft=yaml|:X|:call franklx#CryptModeline()

autocmd BufNewFile *.py :call franklx#InsertPyHeader()
autocmd BufNewFile *.py :call franklx#AppendModeline()

"autocmd BufNewFile,BufRead *.tmpl,*.jhtml setlocal ft=html syntax=jinja
autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
"autocmd BufNewFile,BufRead *.html,*.htm setlocal ft=html syntax=jinja
autocmd BufNewFile,BufRead *.json setlocal ft=javascript
autocmd BufNewFile,BufRead *.kv setlocal ft=kivy
autocmd BufNewFile,BufRead *.pyj set filetype=rapydscript
autocmd BufNewFile,BufRead *.md :TableModeEnable

autocmd BufNewFile,BufRead *.cgi setlocal ft=perl
autocmd BufNewFile,BufRead *_py.cgi setlocal ft=python

autocmd BufNewFile,BufRead *.pug,*.html,*.tmpl,*.jhtml setlocal ft=jinja-composite
