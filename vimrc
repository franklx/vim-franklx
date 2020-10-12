"""""""""""""""""""
set nocompatible
filetype off
if has("win32")
    language C
    let $LANG='en'
    "set runtimepath+=~/Dropbox/Settings/Vim
    "set runtimepath+=~/Dropbox/Settings/Vim/bundle/Vundle.vim
    "call vundle#begin('~/Dropbox/Settings/Vim/bundle')
endif

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
"   Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Misc
Plugin 'DirDiff.vim'
Plugin 'TaskList.vim'
Plugin 'aaronbieber/vim-vault'
Plugin 'Shougo/vimshell.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
if has("unix")
Plugin 'guns/xterm-color-table.vim'
endif

" Nim
Plugin 'zah/nim.vim'

" Python
Plugin 'franklx/python-syntax'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'tshirtman/vim-cython'
Plugin 'manicmaniac/coconut.vim'

" Haskell
Plugin 'shougo/vimproc.vim'
Plugin 'franklx/vim2hs'
Plugin 'Twinside/vim-hoogle'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'pbrisbin/vim-syntax-shakespeare'
Plugin 'alx741/vim-yesod'

" Javascript and friends
Plugin 'pangloss/vim-javascript'
Plugin 'isRuslan/vim-es6'
Plugin 'othree/javascript-libraries-syntax.vim'
"   Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'HerringtonDarkholme/yats.vim'
"   Coffeescript
Plugin 'rossjrw/vim-coffee-script'
"   Livescript
Plugin 'franklx/vim-ls'

" Web
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'digitaltoad/vim-pug'
"   Vue
Plugin 'franklx/vim-vue'
"   JSX (react etc)
Plugin 'MaxMEllon/vim-jsx-pretty'
"   Svelte
""Plugin 'evanleck/vim-svelte'
Plugin 'leafOfTree/vim-svelte-plugin'

" Powershell
Plugin 'PProvost/vim-ps1'

" F#
Plugin 'fsharp/vim-fsharp'

" Kotlin
Plugin 'udalov/kotlin-vim'
"   Velocity templates
Plugin 'lepture/vim-velocity'

" Julia
Plugin 'JuliaEditorSupport/julia-vim'

" TOML config file format
Plugin 'cespare/vim-toml'

" OpenHAB
Plugin 'cyberkov/openhab-vim'

" Rust
Plugin 'rust-lang/rust.vim'

" Go
if v:version >= 800
Plugin 'fatih/vim-go'
endif

let g:airline_powerline_fonts = 1
let g:airline_theme           = "bubblegum"
let g:airline_section_z       = "%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l%#__restore__#:%3c%V"
"let g:airline#extensions#tabline#enabled = 1

" Other
"Plugin 'wavded/vim-stylus'
"Plugin 'oplatek/Conque-Shell'
"Plugin 'bernh/pss.vim'
"Plugin 'derekwyatt/vim-scala'
"Plugin 'farfanoide/vim-kivy'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'raichoo/purescript-vim'
"Plugin 'M4R7iNP/vim-imba'
"Plugin 'melrief/vim-frege-syntax'
"Plugin 'salpalvv/vim-gluon'

call vundle#end()
filetype plugin indent on

let g:pymode_virtualenv = 0

set backspace=indent,start,eol " added eol

behave xterm
set mousemodel=popup

syntax on
color desert256

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

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

let g:haskell_indent_if    = 4
let g:haskell_indent_case  = 4
let g:haskell_indent_let   = 4
let g:haskell_indent_where = 4
let g:haskell_indent_do    = 4
let g:haskell_indent_in    = 4

let g:go_version_warning   = 0

let g:vim_svelte_plugin_use_pug         = 1
let g:vim_svelte_plugin_use_typescript  = 1
let g:vim_svelte_plugin_use_sass        = 1
let g:vim_svelte_plugin_has_init_indent = 1

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
    "set guifont=Fantasque_Sans_Mono:h13:cANSI
    set guifont=Iosevka_Term_Custom:h11
    set printfont=Iosevka_Term_Custom:h11
    set guioptions-=T
    set selectmode=mouse
    set mouse=a
    if has("unix")
        set guifont=Iosevka\ Term\ Custom\ 11
    endif
    if has("win32")
        set renderoptions=type:directx,taamode:2,geom:1
    endif
    if has("gui_macvim")
        set guifont=DejaVu_Sans_Mono:h12
        set anti
    endif
endif

" do syntax highlight syncing from start
autocmd BufEnter * :syntax sync fromstart
" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

set ruler
set ttyfast
"set cursorline

set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*.db
set wildmode=list:full

set nosmartindent
set cindent
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
set shiftwidth=4

" Better Search
set hlsearch
set incsearch

" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

set nowrap
if !has("nvim")
    set esckeys
endif

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
set viminfo=!,'100,\"100,:20,<50,s10,h

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

autocmd FileType python setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with formatoptions=roq foldmethod=indent
let python_highlight_all = 1
"let python_version_2 = 1

"autocmd FileType html,htmldjango,htmljinja let b:closetag_html_style=1
"autocmd FileType html,xhtml,xml,htmldjango,htmljinja source ~/.vim/scripts/closetag.vim

autocmd FileType svelte set smarttab< tabstop< softtabstop< shiftwidth< shiftround< expandtab< shiftwidth<

let javascript_enable_domhtmlcss=1
"let g:closetag_default_xml=1

let ctrlp_clear_cache_on_exit = 1

set laststatus=2

map <leader>TL <Plug>TaskList

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap <leader>ea <Plug>(EasyAlign)
xmap <leader>ea <Plug>(EasyAlign)

au BufNewFile,BufRead *.hs map <buffer> <F1> :HoogleInfo<CR>
au BufNewFile,BufRead *.hs map <buffer> <C-F1> :HoogleClose<CR>
au BufNewFile,BufRead *.hs map <buffer> <S-F1> :HoogleLine<CR>

au BufNewFile,BufRead *.jhtml se filetype=html | se syntax=jinja

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
"au BufNewFile,BufRead		*.html		se syntax=jinjahtml | se filetype=jinjahtml
"au BufNewFile,BufRead		*.mkd		se syntax=mkd
"map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrows=0
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
