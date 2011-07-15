if has('macunix')                   "Account for higher DPI on the Mac
    set gfn=Menlo\ Regular:h15
    "set gfn=Droid\ Sans\ Mono:h15
elseif has('unix') "Linux
    set gfn=Monospace\ 11
    set guioptions-=T "remove toolbar
else
    set gfn=Droid_Sans_Mono:h11:cANSI
endif

call pathogen#runtime_append_all_bundles()

set background=light
colorscheme solarized           "My favourite color scheme
set nocompatible                "No need to carry cruft
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set visualbell
set noerrorbells
set bs=indent,eol,start
syntax on
set number
set foldmethod=syntax             "default fold method
set nofoldenable                  " …but have folds open by default
set nowrap
set guioptions+=b

if has("gui_running")
    set colorcolumn=80
endif

if has('win32')
    source $VIMRUNTIME/mswin.vim
endif

nnoremap / /\v
vnoremap / /\v
nnoremap <esc> :noh<cr>
set smartcase
set incsearch
set showmatch
set hlsearch
"
"search the current file for special notes
nmap <silent> <Leader>ff :lvimgrep /\CTODO\\|FIXME/j %<CR>:lopen<CR>
nmap <silent> <Leader>nn :lvimgrep /\CNOTE\\|TEST/j %<CR>:lopen<CR>

set linebreak
set showbreak=>>

set nobackup
set noswapfile
filetype on
filetype plugin on
filetype indent on

compiler ruby

nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk
vnoremap j gj
vnoremap <down> gj
vnoremap k gk
vnoremap <up> gk

let g:xml_syntax_folding=1

" miniBufExplorer config
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" taglist config
let g:ctags_statusline=1
nnoremap TT :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1

" for Python only
autocmd FileType python set omnifunc=pythoncomplete#Complete

