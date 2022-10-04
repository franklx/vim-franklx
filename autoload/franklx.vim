" vim script
function! franklx#InsertPyHeader()
    call append(0, ["#!/usr/bin/env python3", "# -*- coding: utf-8 -*-"])
endfunction

function! franklx#AppendModeline()
    let l:modeline = printf("vim: set ts=%d sts=%s sw=%d %set %ssta :", &tabstop, &softtabstop, &shiftwidth, &expandtab ? '' : 'no', &smarttab ? '' : 'no')
    let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
    call append(line("$"), l:modeline)
endfunction

function! franklx#CryptModeline()
    let l:modeline = "vim: autoindent nobackup nowritebackup noswapfile bufhidden=wipe foldmethod=indent fdo=insert,hor,block,search fcl=all fdt=* cm=blowfish ft=yaml ic hlsearch :"
    let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
    call append(line("$"), l:modeline)
endfunction

function franklx#DeleteTrailingWS()
    if ( &filetype != 'markdown' ) && ( &filetype != 'markdown_tablemode' ) && ( &filetype != 'gfm' )
        exe "normal mz"
        %s/\s\+$//ge
        exe "normal `z"
        echo "Deleted trailing whitespaces."
    else
        echo "Delete trailing whitespaces DISABLED for markdown files."
    endif
endfunc
