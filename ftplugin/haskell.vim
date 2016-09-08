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
