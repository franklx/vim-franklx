
" Load the livescript and html indent functions.
silent! unlet b:did_indent
runtime indent/ls.vim
let s:lsIndentExpr = &l:indentexpr

" Load html last so it can overwrite livescript settings.
silent! unlet b:did_indent
runtime indent/html.vim
let s:htmlIndentExpr = &l:indentexpr

" Inject our wrapper indent function.
setlocal indentexpr=GetCoffeeHtmlIndent(v:lnum)

function! GetCoffeeHtmlIndent(curlinenum)
  " See if we're inside a livescript block.
  let scriptlnum = searchpair('<script [^>]*type="text/ls"[^>]*>', '',
  \                           '</script>', 'bWn')
  let prevlnum = prevnonblank(a:curlinenum)

  " If we're in the script block and the previous line isn't the script tag
  " itself, use livescript indenting.
  if scriptlnum && scriptlnum != prevlnum
    exec 'return ' s:lsIndentExpr
  endif

  " Otherwise use html indenting.
  exec 'return ' s:htmlIndentExpr
endfunction
