set nocompatible

" Plugins
" vim-plug
" https://github.com/junegunn/vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
"call plug#begin('~/.local/share/nvim/plugged')
call plug#begin('~/.vim/plugged')

" Make sure to use single quotes
" Install with `:PlugInstall`

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" https://github.com/fenetikm/falcon/wiki/Installation
"Plug 'fenetikm/falcon'

" https://github.com/altercation/vim-colors-solarized
"Plug 'lifepillar/vim-solarized8'

" https://github.com/joshdick/onedark.vim
Plug 'joshdick/onedark.vim'

" https://github.com/ervandew/supertab
Plug 'ervandew/supertab'

" Initialize plugin system
call plug#end()


" specify different areas of the screen where the splits should occur
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" proper PEP8 indentation for Python (and Java)
au BufNewFile,BufRead *.py
    \ set tabstop=4 | 
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set colorcolumn=80 |
" number of visual spaces per TAB
" number of spaces in tab when editing
" tabs are spaces
" set an 80 column border for good coding style

" proper indentation for Java (following Python)
au BufNewFile,BufRead *.java
    \ set tabstop=4 | 
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set colorcolumn=80 |

" proper indendentation for web development
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead *.R
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |

" flag unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" Syntax Hightlighting
syntax enable " enable syntax processing
"colorscheme badwolf
colorscheme onedark
"hi Normal ctermbg=16 guibg=#000000 " fully black background
"colorscheme falcon
"set background=dark
"set background=dark
"colorscheme solarized

" Line-Numbers in grau (zu dunkel durch onedark-Colorscheme)
highlight LineNr ctermfg=grey
highlight Comment ctermfg=grey
highlight Normal ctermfg=white


" Neovim only
"set termguicolors
" May cause issue: https://stackoverflow.com/questions/62702766/termguicolors-in-vim-makes-everything-black-and-white


" UI Config
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
"set showmatch " highlight matching [{()}]


" Searching
set incsearch " search as characters are entered
set hlsearch " highlight matches
nnoremap <leader><space> :nohlsearch<CR> " turn off highlighting with ",<Space>"


" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]


" Other Configurations
" turn on system clipboard
set clipboard=unnamedplus

" errors flash screen rather than emit beep
set visualbell

" middle-click paste with mouse
set mouse=v

" Necessary for the Lightline to show
set laststatus=2

" Don't separate words when line reaches the end of the screen (but only with
" spaces and similar charaters)
set linebreak
