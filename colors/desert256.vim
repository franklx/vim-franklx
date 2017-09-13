" Vim color file - desert256
" Generated by http://bytefluent.com/vivify 2013-03-31
set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

set t_Co=256
let g:colors_name = "desert256"

""" System Colors
hi Normal         guifg=#f2f2f2 guibg=#000000 guisp=#000000 gui=NONE      ctermfg=255  ctermbg=NONE cterm=NONE
hi SpecialKey     guifg=#b7ff26 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=154  ctermbg=NONE cterm=NONE
hi LineNr         guifg=#b4aba2 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=138  ctermbg=NONE cterm=NONE

hi Cursor         guifg=#000000 guibg=#7ef076 guisp=#7ef076 gui=NONE      ctermfg=NONE ctermbg=120  cterm=NONE
hi CursorIM       guifg=#000000 guibg=#e987ff guisp=#e987ff gui=NONE      ctermfg=NONE ctermbg=177  cterm=NONE
hi lCursor        guifg=#000000 guibg=#87ffe9 guisp=#87ffe9 gui=NONE      ctermfg=NONE ctermbg=122  cterm=NONE
hi Search         guifg=NONE    guibg=#5f5f87 guisp=#5f5f87 gui=NONE      ctermfg=NONE ctermbg=60   cterm=NONE
hi IncSearch      guifg=NONE    guibg=#875f5f guisp=#875f5f gui=NONE      ctermfg=NONE ctermbg=95   cterm=NONE
hi Visual         guifg=NONE    guibg=#5f5f5f guisp=#5f5f5f gui=NONE      ctermfg=NONE ctermbg=59   cterm=NONE

hi FoldColumn     guifg=#ffd787 guibg=#4d454d guisp=#4d454d gui=NONE      ctermfg=222  ctermbg=239  cterm=NONE
hi Folded         guifg=#fffbe5 guibg=#4d454d guisp=#4d454d gui=NONE      ctermfg=230  ctermbg=239  cterm=NONE

hi DiffAdd        guifg=NONE    guibg=#004000 guisp=#acacc0 gui=NONE      ctermfg=NONE ctermbg=7    cterm=NONE
hi DiffChange     guifg=NONE    guibg=#000040 guisp=#c0acc0 gui=NONE      ctermfg=NONE ctermbg=7    cterm=NONE
hi DiffDelete     guifg=#dadaf4 guibg=#400000 guisp=#738080 gui=bold      ctermfg=189  ctermbg=66   cterm=bold
hi DiffText       guifg=NONE    guibg=#404000 guisp=#404000 gui=bold      ctermfg=NONE ctermbg=7    cterm=bold

hi Directory      guifg=#abbebe guibg=NONE    guisp=NONE    gui=NONE      ctermfg=109  ctermbg=NONE cterm=NONE

hi ErrorMsg       guifg=#ff0000 guibg=#2b2b2b guisp=#2b2b2b gui=bold      ctermfg=196  ctermbg=235  cterm=bold
hi WarningMsg     guifg=#ff6b5b guibg=NONE    guisp=NONE    gui=NONE      ctermfg=203  ctermbg=NONE cterm=NONE

hi ModeMsg        guifg=#ffba0b guibg=NONE    guisp=NONE    gui=NONE      ctermfg=214  ctermbg=NONE cterm=NONE
hi MoreMsg        guifg=#2cbe6b guibg=NONE    guisp=NONE    gui=NONE      ctermfg=35   ctermbg=NONE cterm=NONE
hi NonText        guifg=#a4edff guibg=#000000 guisp=#000000 gui=bold      ctermfg=159  ctermbg=NONE cterm=bold

hi Pmenu          guifg=#ffe4ff guibg=#4b5258 guisp=#4b5258 gui=NONE      ctermfg=225  ctermbg=240  cterm=NONE
hi PmenuSbar      guifg=NONE    guibg=#767f88 guisp=#767f88 gui=NONE      ctermfg=NONE ctermbg=60   cterm=NONE
hi PmenuSel       guifg=#84ff84 guibg=#858e98 guisp=#858e98 gui=NONE      ctermfg=120  ctermbg=246  cterm=NONE
hi PmenuThumb     guifg=NONE    guibg=#807973 guisp=#807973 gui=NONE      ctermfg=NONE ctermbg=8    cterm=NONE

hi StatusLine     guifg=#ffefbf guibg=#3f727f guisp=#3f323f gui=NONE      ctermfg=229  ctermbg=8    cterm=NONE
hi StatusLineNC   guifg=#c5be88 guibg=#2f626f guisp=#2f222f gui=NONE      ctermfg=229  ctermbg=8    cterm=NONE

hi TabLine        guifg=#b5ae78 guibg=#1f525f guisp=#2f222f gui=NONE      ctermfg=248  ctermbg=23   cterm=NONE
hi TabLineSel     guifg=#ffefbf guibg=#3f727f guisp=#3f323f gui=NONE      ctermfg=255  ctermbg=69   cterm=NONE

hi Question       guifg=#e5fff2 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=194  ctermbg=NONE cterm=NONE

hi Title          guifg=#ff5b5b guibg=NONE    guisp=NONE    gui=NONE      ctermfg=203  ctermbg=NONE cterm=NONE
hi VertSplit      guifg=#f5eeb8 guibg=#7f727f guisp=#7f727f gui=NONE      ctermfg=229  ctermbg=8    cterm=NONE
hi VisualNOS      guifg=NONE    guibg=NONE    guisp=NONE    gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

hi WildMenu       guifg=#343434 guibg=#807973 guisp=#807973 gui=NONE      ctermfg=236  ctermbg=8    cterm=NONE

""" Indent guides
hi IndentGuidesOdd              guibg=#080808                                          ctermbg=232
hi IndentGuidesEven             guibg=#121212                                          ctermbg=233

"hi ColorColumn
"hi Conceal
"hi CursorColumn
"hi CursorLine
"hi CursorLineNr
"hi EndOfBuffer
"hi MatchParen
"hi Menu
"hi QuickFixLine
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLineFill
"hi Tooltip

""" Common Colors
hi Statement      guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi Conditional    guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi Exception      guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi Repeat         guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi Operator       guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi Delimiter      guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi Structure      guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi Keyword        guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi StorageClass   guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE
hi Typedef        guifg=#f0e770 guibg=NONE    guisp=NONE    gui=bold      ctermfg=227  ctermbg=NONE cterm=NONE

hi Type           guifg=#ff5f5f guibg=NONE    guisp=NONE    gui=NONE      ctermfg=203  ctermbg=NONE cterm=NONE

hi Define         guifg=#8787ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=105  ctermbg=NONE cterm=NONE
hi PreCondit      guifg=#8787ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=105  ctermbg=NONE cterm=NONE
hi PreProc        guifg=#8787ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=105  ctermbg=NONE cterm=NONE
hi Include        guifg=#8787ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=105  ctermbg=NONE cterm=NONE
hi Macro          guifg=#8787ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=105  ctermbg=NONE cterm=NONE

hi Character      guifg=#ff8787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=211  ctermbg=NONE cterm=NONE
hi Constant       guifg=#ff8787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=211  ctermbg=NONE cterm=NONE
hi Number         guifg=#ff8787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=211  ctermbg=NONE cterm=NONE
hi Float          guifg=#ff8787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=211  ctermbg=NONE cterm=NONE
hi Boolean        guifg=#ff8787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=211  ctermbg=NONE cterm=NONE

hi String         guifg=#ff8700 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=208  ctermbg=NONE cterm=NONE

hi Comment        guifg=#87d7ff guibg=NONE    guisp=NONE    gui=NONE      ctermfg=117  ctermbg=NONE cterm=NONE
hi Todo           guifg=#87ffff guibg=#af0000 guisp=NONE    gui=bold      ctermfg=123  ctermbg=124  cterm=NONE

hi Function       guifg=#87ff87 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=120  ctermbg=NONE cterm=NONE
hi Identifier     guifg=#5faf5f guibg=NONE    guisp=NONE    gui=NONE      ctermfg=71   ctermbg=NONE cterm=NONE
hi Label          guifg=#ffd700 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=220  ctermbg=NONE cterm=NONE

hi Debug          guifg=#ffd787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=222  ctermbg=NONE cterm=NONE
hi Special        guifg=#ffd787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=222  ctermbg=NONE cterm=NONE
hi SpecialChar    guifg=#ffd787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=222  ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#ffd787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=222  ctermbg=NONE cterm=NONE
hi Tag            guifg=#ffd787 guibg=NONE    guisp=NONE    gui=NONE      ctermfg=222  ctermbg=NONE cterm=NONE

hi Error          guifg=#ffd787 guibg=#ff0000 guisp=#ff0000 gui=bold      ctermfg=222  ctermbg=196  cterm=bold
hi Ignore         guifg=#9a8a9a guibg=NONE    guisp=NONE    gui=NONE      ctermfg=247  ctermbg=NONE cterm=NONE
hi User1          guifg=#ffffff guibg=#543f5e guisp=#543f5e gui=NONE      ctermfg=15   ctermbg=59   cterm=NONE
hi Underlined     guifg=#f4daf4 guibg=NONE    guisp=NONE    gui=underline ctermfg=225  ctermbg=NONE cterm=underline

""" Language Specific Settings
hi cFormat                     guifg=#ff9dbf guibg=#400340 guisp=#400340 gui=NONE ctermfg=218 ctermbg=53   cterm=NONE
hi cSpecialCharacter           guifg=#ff9dbf guibg=#400340 guisp=#400340 gui=NONE ctermfg=218 ctermbg=53   cterm=NONE

hi doxygenBrief                guifg=#bdff60 guibg=NONE    guisp=NONE    gui=NONE ctermfg=155 ctermbg=NONE cterm=NONE
hi doxygenComment              guifg=#75fa2d guibg=NONE    guisp=NONE    gui=NONE ctermfg=82  ctermbg=NONE cterm=NONE
hi doxygenParam                guifg=#cfff91 guibg=NONE    guisp=NONE    gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi doxygenPrev                 guifg=#cfff91 guibg=NONE    guisp=NONE    gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi doxygenSmallSpecial         guifg=#cfff91 guibg=NONE    guisp=NONE    gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi doxygenSpecial              guifg=#cfff91 guibg=NONE    guisp=NONE    gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi doxygenSpecialMultilineDesc guifg=#9bfa0e guibg=NONE    guisp=NONE    gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE
hi doxygenSpecialOnelineDesc   guifg=#9bfa0e guibg=NONE    guisp=NONE    gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE

hi perlSpecialMatch            guifg=#ff9dbf guibg=#400340 guisp=#400340 gui=NONE ctermfg=218 ctermbg=53   cterm=NONE
hi perlSpecialString           guifg=#ff9dbf guibg=#400340 guisp=#400340 gui=NONE ctermfg=218 ctermbg=53   cterm=NONE
