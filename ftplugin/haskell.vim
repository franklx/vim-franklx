
let g:haskell_cpp           = 1
let g:haskell_ffi           = 1
let g:haskell_fold          = 1
let g:haskell_haddock       = 0
let g:haskell_hsp           = 0
let g:haskell_interpolation = 1
let g:haskell_jmacro        = 0
let g:haskell_json          = 1
let g:haskell_quasi         = 1
let g:haskell_regex         = 1
let g:haskell_rlangqq       = 0
let g:haskell_shqq          = 0
let g:haskell_sql           = 1
let g:haskell_tabular       = 1
let g:haskell_th            = 1
let g:haskell_xml           = 1

let g:haskell_indent_if    = 4
let g:haskell_indent_case  = 4
let g:haskell_indent_let   = 4
let g:haskell_indent_where = 4
let g:haskell_indent_do    = 4
let g:haskell_indent_in    = 4

" Hoogle the word under the cursor
nnoremap <silent> <leader>hh :Hoogle<CR>
" Hoogle and prompt for input
nnoremap <leader>hH :Hoogle 
" Hoogle for detailed documentation (e.g. "Functor")
nnoremap <silent> <leader>hhi :HoogleInfo<CR>
" Hoogle for detailed documentation and prompt for input
nnoremap <leader>hhI :HoogleInfo 
" Hoogle, close the Hoogle window
nnoremap <silent> <leader>hz :HoogleClose<CR>

" Use hindent instead of par for haskell buffers
autocmd FileType haskell let &formatprg="hindent --style johan-tibell --line-length 120"

" Type of expression under cursor
nmap <silent> <leader>ht :GhcModType<CR>
" Insert type of expression under cursor
nmap <silent> <leader>hT :GhcModTypeInsert<CR>

nmap <silent> <leader>hi :GhcModInfo<CR>
nmap <silent> <leader>hp :GhcModInfoPreview<CR>

nmap <silent> <leader>hc :GhcModCheckAsync<CR>

" Lint expression under cursor
nmap <silent> <leader>hl :GhcModLintAsync<CR>

au BufNewFile,BufRead *.hs map <buffer> <F1> :HoogleInfo<CR>
au BufNewFile,BufRead *.hs map <buffer> <C-F1> :HoogleClose<CR>
au BufNewFile,BufRead *.hs map <buffer> <S-F1> :HoogleLine<CR>
