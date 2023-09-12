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
Plug 'junegunn/vim-easy-align'
Plug 'dhruvasagar/vim-table-mode'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'rking/ag.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Misc
Plug 'vim-scripts/DirDiff.vim'
Plug 'vim-scripts/TaskList.vim'
Plug 'aaronbieber/vim-vault'
Plug 'Shougo/vimshell.vim'
Plug 'lilydjwg/colorizer'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-speeddating'

if has("unix")
Plug 'guns/xterm-color-table.vim'
endif

let g:polyglot_disabled = ['exim.plugin', 'ferm.plugin']

" Polyglot
Plug 'sheerun/vim-polyglot'

" Cython (polyglot: maybe embedded in main python syntax)
"Plug 'tshirtman/vim-cython'

" Haskell (polyglot: neovimhaskell/haskell-vim)
"Plug 'shougo/vimproc.vim'
"Plug 'franklx/vim2hs'
"Plug 'Twinside/vim-hoogle'
"Plug 'eagletmt/ghcmod-vim'
"Plug 'pbrisbin/vim-syntax-shakespeare'
"Plug 'alx741/vim-yesod'

" Javascript and friends
"Plug 'isRuslan/vim-es6'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-jdaddy'

" Typescript
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'HerringtonDarkholme/yats.vim'

" Livescript (polyglot: gkz/vim-ls)
"Plug 'franklx/vim-ls'

" Web
"Plug 'hail2u/vim-css3-syntax'

" Write HTML quickly
Plug 'mattn/emmet-vim'

" Vue (polyglot: posva/vim-vue)
"Plug 'storyn26383/vim-vue'

" Svelte (polyglot: leafOfTree/vim-svelte-plugin)
"Plug 'evanleck/vim-svelte'

" F# (polyglot: ionide/Ionide-vim)
"Plug 'fsharp/vim-fsharp'

" OpenHAB
Plug 'cyberkov/openhab-vim'

" Go (polyglot: same plugin but without 'if v:version >= 800' check)
"Plug 'fatih/vim-go'

" Tools
Plug 'justinmk/vim-dirvish'

" Completion
Plug 'dense-analysis/ale'

" Prisma ORM
Plug 'pantharshit00/vim-prisma'

" Fuzzy Finder
Plug 'dbakker/vim-projectroot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Project Explorer
Plug 'zhaosheng-pan/vim-sidebar-manager'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'jeetsukumaran/vim-buffergator'

" Markdown (polyglot: preservim/vim-markdown)
"Plug 'SidOfc/mkdx'
""Plug 'rhysd/vim-gfm-syntax'

" Other
"Plug 'wavded/vim-stylus'
"Plug 'oplatek/Conque-Shell'
"Plug 'bernh/pss.vim'
"Plug 'derekwyatt/vim-scala'
"Plug 'farfanoide/vim-kivy'
"Plug 'raichoo/purescript-vim'
"Plug 'M4R7iNP/vim-imba'
"Plug 'melrief/vim-frege-syntax'
"Plug 'salpalvv/vim-gluon'

" Rusty Object Notation
Plug 'ron-rs/ron.vim'

" Included in vim-franklx
" cst.vim
" exim.vim
" ferm.vim
" firehol.vim
" fsharp.vim (polyglot: ionide/ionide.vim)
" hurl.vim
" ipfw.vim
" natd.vim
" nginx.vim (polyglot: chr4/nginx.vim)

"Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'subnut/nvim-ghost.nvim'

call plug#end()

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction

"let g:markdown_composer_custom_css = [ "https://raw.githubusercontent.com/sindresorhus/github-markdown-css/main/github-markdown-dark.css" ]

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme           = "bubblegum"
let g:airline_section_z       = "%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l%#__restore__#:%3c%V"
let g:airline_left_sep        = "\uE0B4"
let g:airline_right_sep       = "\uE0B6"
"let g:airline#extensions#tabline#enabled = 1

" Sidebar
let g:NERDTreeShowHidden = 1
"let g:NERDTreeMinimalUI  = 1
let g:NERDTreeIgnore     = ['node_modules', 'target']
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 40
let g:NERDTreeQuitOnOpen = 1
let g:tagbar_left = 1
let g:tagbar_width = 40
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_SplitWidth = 40
let g:buffergator_viewport_split_policy = 'L'

let g:sidebars = {
  \ 'nerdtree': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'nerdtree'},
  \     'open': 'ProjectRootExe NERDTree',
  \     'close': 'NERDTreeClose'
  \ },
  \ 'tagbar': {
  \     'position': 'left',
  \     'check_win': {nr -> bufname(winbufnr(nr)) =~ '__Tagbar__'},
  \     'open': 'TagbarOpen',
  \     'close': 'TagbarClose'
  \ },
  \ 'undotree': {
  \     'position': 'left',
  \     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'undotree'},
  \     'open': 'UndotreeShow',
  \     'close': 'UndotreeHide'
  \ },
  \ 'buffergator': {
  \     'position': 'left',
  \     'check_win': {nr -> bufname(winbufnr(nr)) == '[[buffergator-buffers]]'},
  \     'open': 'BuffergatorOpen',
  \     'close': 'BuffergatorClose'
  \ }
  \ }

noremap <silent> <M-1> :call sidebar#toggle('nerdtree')<CR>
noremap <silent> <M-2> :call sidebar#toggle('tagbar')<CR>
noremap <silent> <M-3> :call sidebar#toggle('undotree')<CR>
noremap <silent> <M-4> :call sidebar#toggle('buffergator')<CR>

let g:startify_session_before_save = ['call sidebar#close_all()']

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

let g:go_version_warning   = 0

let javascript_enable_domhtmlcss=1
"let g:closetag_default_xml=1

" fzf
let g:fzf_buffers_jump = 1
let $FZF_DEFAULT_COMMAND="rg --files --follow"
map <silent> <C-p> :ProjectRootExe FZF<CR>
map <silent> <C-S-p> :ProjectRootExe GFiles<CR>

let g:vim_markdown_fenced_languages = ['javascript', 'typescript', 'python', 'rust', 'json', 'sql', 'pgsql']
let g:vim_markdown_strikethrough = 1
let g:mkdx#settings = {
\   'highlight': {
\   'enable': 1,
\   'frontmatter': { 'yaml': 1, 'toml': 1, 'json': 0 },
\   },
\   'enter': { 'shift': 1 },
\   'links': {
\       'external': { 'enable': 0 },
\       'conceal': 0,
\   },
\   'checkbox': {
\       'toggles': [' ', '-', 'x', 'X'],
\       'match_attrs': {
\           'mkdxCheckboxEmpty': '',
\           'mkdxCheckboxPending': '',
\           'mkdxCheckboxComplete': ''
\           }
\       }
\   }

""Set 1c guide
"let g:indent_guides_color_change_percent = 2
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1

"Ale
let g:ale_enabled = 0
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
" use double-Esc to completely clear the search buffer
nnoremap <silent> <Esc><Esc> :let @/ = ""<CR>
" use space to retain the search buffer and toggle highlighting off/on
nnoremap <silent> <Space> :set hlsearch!<CR>

" delete comment character when joining commented lines
set formatoptions+=j
" recognize numbered list
set formatoptions+=n
" use indent of second line of paragraph
set formatoptions+=2

set redrawtime=0

set nowrap
if !has("nvim")
    set esckeys
endif

set showcmd

" keep some more lines for scope
set scrolloff=5

" load modelines from files
set modeline

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

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

" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Set window title
set title

inoremap # #

" Quick system clipboard access
noremap <Leader>x "+x
noremap <Leader>y "+y
noremap <Leader>p "+gP

"" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
"map <c-j> <c-w>j
"map <c-k> <c-w>k
"map <c-l> <c-w>l
"map <c-h> <c-w>h

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

"augroup pandoc_syntax
"    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
"augroup END

if has("gui_running") || exists('g:neovide')
    set guioptions=cmgt
    set guifont=Iosevka_Term_Custom:h12
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
        "set guifont=Iosevka\ Custom\ Light:h15:#e-antialias:#h-none
        set guifont=Iosevka\ Custom\ Light:h12
    else
        set printfont=Iosevka_Term_Custom:h12
    endif
else
    set mouse=
endif
