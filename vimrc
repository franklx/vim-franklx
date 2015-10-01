"""""""""""""""""""
set nocompatible
filetype off
if has("win32")
    language C
    let $LANG='en'
    set runtimepath+=~/Dropbox/Settings/Vim
    set runtimepath+=~/Dropbox/Settings/Vim/bundle/Vundle.vim
    call vundle#begin('~/Dropbox/Settings/Vim/bundle')
else
    set runtimepath+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

Plugin 'gmarik/Vundle.vim'
" Base
Plugin 'franklx/vim-franklx'
Plugin 'ctrlp.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
" Misc
Plugin 'DirDiff.vim'
Plugin 'TaskList.vim'
Plugin 'aaronbieber/vim-vault'
" Go
Plugin 'fatih/vim-go'
" Nimrod
Plugin 'zah/nimrod.vim'
" Python
Plugin 'hdima/python-syntax'
Plugin 'tshirtman/vim-cython'
" Haskell
Plugin 'shougo/vimproc.vim'
"Plugin 'franklx/vim2hs'
Plugin 'franklx/haskell-vim'
Plugin 'Twinside/vim-hoogle'
Plugin 'eagletmt/ghcmod-vim'
" Web
Plugin 'sukima/xmledit'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'atsepkov/vim-rapydscript'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'franklx/vim-ls' " coffee replacement
" Web Additional
"Plugin 'vim-coffee-script' " CRAP
Plugin 'mustache/vim-mustache-handlebars'

"if has("python")
"    Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
"endif

Plugin 'bling/vim-airline'
let g:airline_powerline_fonts=1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="bubblegum"
let g:airline_section_z="%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l%#__restore__#:%3c%V"

if has("unix")
    Plugin 'guns/xterm-color-table.vim'
endif

" Other
"Plugin 'wavded/vim-stylus'
"Plugin 'oplatek/Conque-Shell'
"Plugin 'bernh/pss.vim'
"Plugin 'derekwyatt/vim-scala'
"Plugin 'farfanoide/vim-kivy'
"Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on

let g:pymode_virtualenv = 0

set backspace=indent,start,eol " added eol

behave xterm
set mousemodel=popup

syntax on
color desert256

"let g:zenburn_transparent = 1
"let g:zenburn_high_Contrast = 1
"let g:zenburn_old_Visual = 1
"color zenburn

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

""Set 1c guide
"let g:indent_guides_color_change_percent = 2
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1

""Moved to colorscheme
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#080808 ctermbg=232
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#121212 ctermbg=233

if has("gui_running")
    set guioptions=cmgtT
    "set guifont=DejaVu_Sans_Mono_for_Powerline:h11:cANSI
    "set guifont=Inconsolata_for_Powerline:h13:cANSI
    set guifont=Fantasque_Sans_Mono:h12:cANSI
    set printfont=Inconsolata_for_Powerline:h9:cANSI
    set guioptions-=T
    set selectmode=mouse
    set mouse=a
    if has("win32")
        set renderoptions=type:directx,taamode:1,contrast:1,geom:0
    endif
endif

if has("gui_macvim")
    set guifont=DejaVu_Sans_Mono:h12
    set anti
endif

" do syntax highlight syncing from start
autocmd BufEnter * :syntax sync fromstart
" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

set title
set ruler
set ttyfast
"set cursorline

set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*.db
set wildmode=list:full

set smartindent
set nocindent
inoremap # #
" ???
"inoremap # X#

" tab for brackets
nnoremap <tab> %
vnoremap <tab> %

" Tab Settings
set smarttab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Better Search
set hlsearch
set incsearch

" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

set nowrap
set esckeys

set showcmd

" keep some more lines for scope
set scrolloff=5

" load modelines from files
set modeline

runtime macros/matchit.vim

" utf-8 default encoding
set enc=utf-8
set fileformats=unix,dos,mac

" don't bell or blink
set noerrorbells
set vb t_vb=

" Better modes.  Remeber where we are, support yankring
set viminfo=!,'100,\"100,:20,<50,s10,h,n~/.viminfo

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Automatic reloading of .vimrc
autocmd! bufwritepost vimrc source %
autocmd! bufwritepost .vimrc source %

" Make the command line two lines high and change the statusline display to
" something that looks useful.
" set cmdheight=2
" set laststatus=2
"set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})
"set showcmd
"set number

autocmd FileType python setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with formatoptions=roq foldmethod=indent
let python_highlight_all = 1
let python_version_2 = 1

"autocmd FileType html,htmldjango,htmljinja let b:closetag_html_style=1
"autocmd FileType html,xhtml,xml,htmldjango,htmljinja source ~/.vim/scripts/closetag.vim

let javascript_enable_domhtmlcss=1
"let g:closetag_default_xml=1

let ctrlp_clear_cache_on_exit = 1

set laststatus=2

map <leader>TL <Plug>TaskList

"set digraph   " M<BS>X = insert sharp
":digraphs     " Ctrl-K MX = insert sharp

"let g:Powerline_symbols = "fancy"

"######################## TODO ########################

"" let mapleader = ","

" map sort function to a key
"" vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
"" vnoremap < <gv  " better indentation
"" vnoremap > >gv  " better indentation


" Showing line numbers and length
"" set number  " show line numbers
"" set tw=79   " width of document (used by gd)
"" set nowrap  " don't automatically wrap on load
"" set fo-=t   " don't automatically wrap text when typing
"" set colorcolumn=80
"" highlight ColorColumn ctermbg=233

"autocmd BufNewFile,BufRead *.html,*.htm  call s:SelectHTML()
""""""""""""""""""""
"set linebreak
"set autoindent
"
"autocmd FileType css set smartindent
"autocmd FileType html,css set noexpandtab
"autocmd FileType html set formatoptions+=tl
"autocmd FileType python set nocindent | set ts=4 | set sts=4 | set sw=4 | set fdm=indent | set fdc=2
"autocmd FileType gtkrc set cindent | set ts=2 | set sts=2 | set sw=2
"command! -nargs=0 -range=% Sort <line1>,<line2>call QSort('CmpByString', 1)
"command! -nargs=0 -range=% SortByLength <line1>,<line2>call QSort('CmpByLineLengthNname', 1)
"command! -nargs=0 -range=% RSortByLength <line1>,<line2>call QSort('CmpByLineLengthNname', -1)
"command! -nargs=0 -range=% SortJavaImports <line1>,<line2>call QSort('CmpJavaImports', 1)
"au BufNewFile,BufRead *.todo         setf todo
"
"let javascript_enable_domhtmlcss = 1
"
"hi Pmenu      guibg=#c2bfa5	   guifg=Black
"hi PmenuSel   ctermfg=White	   ctermbg=DarkBlue  guifg=Yellow  guibg=DarkBlue
"
"au BufNewFile,BufRead		ipfw.rules	se syntax=ipfw
"au BufNewFile,BufRead		natd.conf	se syntax=natd
"au BufNewFile,BufRead		*.jhtml		se syntax=jinjahtml | se filetype=jinjahtml
"au BufNewFile,BufRead		*.html		se syntax=jinjahtml | se filetype=jinjahtml
"au BufNewFile,BufRead		*.mkd		se syntax=mkd
"map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrows=0
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
