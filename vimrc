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
"Plug 'vim-scripts/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'dhruvasagar/vim-table-mode'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'rking/ag.vim'
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

" Haskell
Plug 'shougo/vimproc.vim'
Plug 'franklx/vim2hs'
Plug 'Twinside/vim-hoogle'
Plug 'eagletmt/ghcmod-vim'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'alx741/vim-yesod'

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
Plug 'justinmk/vim-dirvish'

Plug 'dense-analysis/ale'


" PostgreSQL
Plug 'lifepillar/pgsql.vim'

" Fuzzy Finder
Plug 'dbakker/vim-projectroot'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Project Explorer
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'

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

call plug#end()

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme           = "bubblegum"
let g:airline_section_z       = "%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l%#__restore__#:%3c%V"
let g:airline_left_sep        = "\uE0B4"
let g:airline_right_sep       = "\uE0B6"
"let g:airline#extensions#tabline#enabled = 1

" NerdTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI  = 1
let g:NERDTreeIgnore     = ['node_modules']
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) | execute 'cd '.argv()[0] | endif

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

let g:go_version_warning   = 0

let javascript_enable_domhtmlcss=1
"let g:closetag_default_xml=1

let ctrlp_clear_cache_on_exit = 1

""Set 1c guide
"let g:indent_guides_color_change_percent = 2
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1

"Ale
let g:ale_linters = {'rust': ['rustc', 'analyzer']}
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']
set omnifunc=ale#completion#OmniFunc
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

syntax on
behave xterm
color desert256
filetype plugin indent on

set backspace=indent,start,eol " added eol

set laststatus=2
set ruler
set ttyfast
"set cursorline

set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*.db
set wildmode=list:full

set nosmartindent
set cindent

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

" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

inoremap # #

noremap <Leader>x "+x
noremap <Leader>y "+y
noremap <Leader>p "+gP

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" tab for brackets
nnoremap <tab> %
vnoremap <tab> %

" TaskList
map <leader>TL <Plug>TaskList

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap <leader>ea <Plug>(EasyAlign)
xmap <leader>ea <Plug>(EasyAlign)
vmap <Enter> <Plug>(EasyAlign)

map <C-b> :ProjectRootExe NERDTreeToggle<CR>

autocmd FileType svelte set smarttab< tabstop< softtabstop< shiftwidth< shiftround< expandtab< shiftwidth<

" Automatic reloading of .vimrc
autocmd! BufWritePost vimrc source %
autocmd! BufWritePost .vimrc source %

" do syntax highlight syncing from start
autocmd BufEnter * :syntax sync fromstart
" Remember cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" 
autocmd BufNewFile,BufRead /dev/shm/** setlocal noswapfile nobackup noundofile

if has("gui_running") || exists('g:neovide')
    set guioptions=cmgt
    set guifont=Iosevka_Term_Custom:h12
    set printfont=Iosevka_Term_Custom:h12
    set selectmode=mouse
    set mouse=a
    set mousemodel=popup
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
    if exists('g:neovide')
        set guifont=Iosevka\ Custom\:h11
    endif
endif
