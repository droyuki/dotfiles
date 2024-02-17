set nocompatible "ignore legacy vi configs
call plug#begin()

Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/LeaderF'
Plug 'ycm-core/YouCompleteMe'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

filetype plugin indent on
"To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Put your non-Plugin stuff after this line

"===== map leader key to backslash =====
let mapleader = '\'

"===== open terminal in current folder =====
map <leader>t :let $VIM_DIR=expand('%:p:h')<CR>:term++rows=7<CR>cd $VIM_DIR<CR>

"======= nerdtree shortcut ======="
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>


"===== leaderf config ====="
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

"===== YouCompleteMe====="
let g:ycm_python_binary_path='/usr/lib/python3.8'

"===== easymotion=====
map <Space> <Plug>(easymotion-bd-w)


"=============== GUI options ==================

"set guioptions-=m                                                               "remove menu bar
"set guioptions-=T                                                               "remove toolbar
set guioptions-=L                                                               "remove left scrollbar when vertical split
set guioptions-=r                                                               "remove left scrollbar when vertical split
set guioptions-=l                                                               "remove left scrollbar
set guifont=FiraCode\ Nerd\ Font\ Medium\ 12                     "font setup
set linespace=10                                                                "Set lineheight in gvim

" ================ General Config ====================
set splitbelow                                                                  "split windows below"
set t_Co=256                                                                    "Set 256 colors
set title                                                                       "change the terminal's title
set number                                                                      "Line numbers are good
set backspace=indent,eol,start                                                  "Allow backspace in insert mode
set history=500                                                                 "Store lots of :cmdline history
set gdefault                                                                    "Set global flag for search and replace
set gcr=a:blinkon500-blinkwait500-blinkoff500                                   "Set cursor blinking rate
set cursorline                                                                  "Highlight current line
set autoread                                                                    "Reload files changed outside vim
set smartcase                                                                   "Smart case search if there is uppercase
set ignorecase                                                                  "case insensitive search
set hlsearch                                                                    "Highlight search term
set incsearch                                                                   "Jump to found term while searching
set showmatch                                                                   "Highlight matching bracket
set nostartofline                                                               "Jump to first non-blank character
set timeoutlen=1000 ttimeoutlen=200                                             "Reduce Command timeout for faster escape and O
set laststatus=2                                                                "Show statusbar
set fileencoding=utf-8 encoding=utf-8                                           "Set utf-8 encoding on write
set wrap                                                                        "Enable word wrap
set linebreak                                                                   "Wrap lines at convenient points
set listchars=eol:⏎,trail:·,tab:\|\                                                  "Set trails for tabs and spaces
set list                                                                        "Enable listchars
set lazyredraw                                                                  "Do not redraw on registers and macros
set background=dark                                                             "Set background to dark
set hidden                                                                      "Hide buffers in background
set splitright                                                                  "Set up new splits positions
set scrolloff=3                                                                 "reserve 3 lines when page down"
set expandtab                                                                   "use space instead of tab"
set tabstop=2                                                                   "tab size"
set shiftwidth=2                                                                "indent with 2 spaces"
set visualbell                                                                  "blink cursor on error"

syntax on                                                                       "turn on syntax highlighting

