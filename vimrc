"""""""""""""""""""
set nocompatible
filetype off
if has("win32")
    language C
    let $LANG='en'
    "set runtimepath+=~/Dropbox/Settings/Vim
    "set runtimepath+=~/Dropbox/Settings/Vim/bundle/Vundle.vim
endif

" Install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

" Base
Plug 'franklx/vim-franklx'
Plug 'vim-scripts/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'dhruvasagar/vim-table-mode'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rking/ag.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
"   Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Misc
Plug 'vim-scripts/DirDiff.vim'
Plug 'vim-scripts/TaskList.vim'
Plug 'aaronbieber/vim-vault'
Plug 'Shougo/vimshell.vim'
Plug 'lilydjwg/colorizer'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
if has("unix")
Plug 'guns/xterm-color-table.vim'
endif

" Nim
Plug 'zah/nim.vim'

" Python
Plug 'franklx/python-syntax'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'tshirtman/vim-cython'
Plug 'manicmaniac/coconut.vim'

" Haskell
Plug 'shougo/vimproc.vim'
Plug 'franklx/vim2hs'
Plug 'Twinside/vim-hoogle'
Plug 'eagletmt/ghcmod-vim'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'alx741/vim-yesod'
"Plug 'franklx/haskell-vim'
"Plug 'enomsg/vim-haskellConcealPlus'

" Javascript and friends
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'othree/javascript-libraries-syntax.vim'
"   Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'HerringtonDarkholme/yats.vim'
"   Coffeescript
Plug 'kchmck/vim-coffee-script'
"   Livescript
Plug 'franklx/vim-ls'

" Web
Plug 'cakebaker/scss-syntax.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'digitaltoad/vim-pug'
"   Vue
Plug 'franklx/vim-vue'
"   JSX (react etc)
Plug 'MaxMEllon/vim-jsx-pretty'
"   Svelte
Plug 'evanleck/vim-svelte'

" Powershell
Plug 'PProvost/vim-ps1'

" F#
Plug 'fsharp/vim-fsharp'

" Kotlin
Plug 'udalov/kotlin-vim'
"   Velocity templates
Plug 'lepture/vim-velocity'

" Julia
Plug 'JuliaEditorSupport/julia-vim'

" TOML config file format
Plug 'cespare/vim-toml'

" OpenHAB
Plug 'cyberkov/openhab-vim'

" Go
if v:version >= 800
Plug 'fatih/vim-go'
endif

" Rust
Plug 'rust-lang/rust.vim'

" Tools
Plug 'vim-syntastic/syntastic'
Plug 'justinmk/vim-dirvish'
Plug 'prabirshrestha/asyncomplete.vim'

" PostgreSQL
Plug 'lifepillar/pgsql.vim'

" Project Explorer
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" pip install python-language-server
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': {server_info->['pyls']},
                \ 'allowlist': ['python'],
                \ })
endif

"" rustup component add rls rust-analysis rust-src
"if executable('rls')
"    au User lsp_setup call lsp#register_server({
"                \ 'name': 'rls',
"                \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
"                \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
"                \ 'whitelist': ['rust'],
"                \ })
"endif

" npm install -g typescript typescript-language-server
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'javascript support using typescript-language-server',
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
                \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
                \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact'],
                \ })
endif

" npm install --global vscode-html-languageserver-bin
if executable('html-languageserver')                         
    au User lsp_setup call lsp#register_server({               
                \ 'name': 'html-languageserver',                     
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},                                   
                \ 'whitelist': ['html'],                             
                \ })                                                       
endif                   

" npm install -g vscode-css-languageserver-bin
if executable('css-languageserver')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'css-languageserver',
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
                \ 'whitelist': ['css', 'less', 'sass'],
                \ })
endif

" npm install vls -g
if executable('css-languageserver')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'vls',
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'vls --stdio']},
                \ 'whitelist': ['vue'],
                \ })
endif

" go get -u golang.org/x/tools/gopls
if executable('gopls')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'gopls',
                \ 'cmd': {server_info->['gopls']},
                \ 'whitelist': ['go'],
                \ })
    autocmd BufWritePre *.go LspDocumentFormatSync
endif

Plug 'prabirshrestha/asyncomplete-file.vim'
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'allowlist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

let g:airline_powerline_fonts = 1
let g:airline_theme           = "bubblegum"
let g:airline_section_z       = "%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l%#__restore__#:%3c%V"
let g:airline_left_sep        = "\uE0B4"
let g:airline_right_sep       = "\uE0B6"
"let g:airline#extensions#tabline#enabled = 1

" Other
"Plug 'wavded/vim-stylus'
"Plug 'oplatek/Conque-Shell'
"Plug 'bernh/pss.vim'
"Plug 'derekwyatt/vim-scala'
"Plug 'farfanoide/vim-kivy'
"Plug 'plasticboy/vim-markdown'
"Plug 'raichoo/purescript-vim'
"Plug 'M4R7iNP/vim-imba'
"Plug 'melrief/vim-frege-syntax'
"Plug 'salpalvv/vim-gluon'
"

" NerdTree
let g:NERDTreeShowHidden = 1
"let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
"let NERDTreeStatusline='NERDTree'
" File explorer plugin
map <C-b> :NERDTreeToggle<CR>
" nerd commenter
noremap <C-/> :NERDCommenterComment<CR>

""" " Intellisense and code completion with syntax highlighting
""" Plug 'neoclide/coc.nvim', {'branch': 'release'}
""" let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', ...]

call plug#end()
filetype plugin indent on
filetype plugin on

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
    set guifont=Iosevka_Term_Custom:h12
    set printfont=Iosevka_Term_Custom:h12
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

if exists('g:neovide')
    set guifont=Iosevka\ Custom\:h11
endif

" do syntax highlight syncing from start
autocmd BufEnter * :syntax sync fromstart
" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) | execute 'cd '.argv()[0] | endif

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

" Better Search
set hlsearch
set incsearch

" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

noremap <Leader>x "+x
noremap <Leader>y "+y
noremap <Leader>p "+gP

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

"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

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

au BufNewFile,BufRead /dev/shm/** setlocal noswapfile nobackup noundofile

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
