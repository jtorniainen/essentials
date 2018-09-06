set nocompatible

set tabstop=4
set shiftwidth=4
set expandtab

set t_Co=256
set ttyfast
set encoding=utf-8


set number
syntax on
set cursorline

call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'python-mode/python-mode'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "Plug 'hdima/python-syntax'
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    Plug 'lazywei/vim-matlab'
    Plug 'reedes/vim-pencil'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'junegunn/seoul256.vim'
    Plug 'yuttie/hydrangea-vim'
    Plug 'lu-ren/SerialExperimentsLain'
    Plug 'danilo-augusto/vim-afterglow'
    Plug 'andreypopp/vim-colors-plain'
    Plug 'aradunovic/perun.vim'
    Plug 'miconda/lucariox.vim'
    Plug 'TroyFletcher/vim-colors-synthwave'
    Plug 'lmintmate/blue-mood-vim'
    Plug 'schickele/vim'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'nightsense/snow'
    Plug 'morhetz/gruvbox'
    Plug 'kaicataldo/material.vim'

call plug#end()

let base16colorspace=256

"colorscheme gruvbox
"colorscheme lucariox
"colorscheme fruchtig
"colorscheme afterglow
"colorscheme seoul256
colorscheme gruvbox
"set background=material
set background=dark

" Disable background color
"hi Normal ctermbg=none

" airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='base16'

" python-syntax
let python_highlight_all=1

"" pymode
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_options_max_line_length = 120
let g:pymode_rope = 0

" rainbow
au VimEnter * RainbowParenthesesToggle
au Syntax RainbowParenthesesLoadRound
au Syntax RainbowParenthesesLoadSquare
au Syntax RainbowParenthesesLoadBraces

" nerdtree
map <C-n> :NERDTreeToggle<CR>


" Define a better ESC
inoremap jk <ESC>

" Buffer navigation
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 

" misc
let mapleader = ","
set list
" completeopt deals with sporadic pymode doc windows
set completeopt=menu
set cursorcolumn


" Some additional air-line fuckery
 let g:airline_powerline_fonts = 1

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

     " unicode symbols
     let g:airline_left_alt_sep = '»'
     let g:airline_left_sep = '▶'
     let g:airline_right_sep = '«'
     let g:airline_right_sep = '◀'
     let g:airline_symbols.linenr = '␊'
     let g:airline_symbols.linenr = '␤'
     let g:airline_symbols.linenr = '¶'
     let g:airline_symbols.branch = '⎇'
     let g:airline_symbols.paste = 'ρ'
     let g:airline_symbols.paste = 'Þ'
     let g:airline_symbols.paste = '∥'
     let g:airline_symbols.whitespace = 'Ξ'

     " airline symbols
     "let g:airline_left_sep = '>'
     "let g:airline_left_alt_sep = '>>'
     "let g:airline_right_sep = '<'
     "let g:airline_right_alt_sep = '<<'
     "let g:airline_symbols.branch = 'Y'
     "let g:airline_symbols.readonly = 'R'
     "let g:airline_symbols.linenr = '^'
