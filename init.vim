" Basic settings
set number
syntax on
" set colorcolumn=81
set tabstop=4
set shiftwidth=4

" Install plugins
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'klen/python-mode'
Plug 'lazywei/vim-matlab'
Plug 'reedes/vim-pencil'
Plug 'morhetz/gruvbox'
call plug#end()

" Set colorscheme
set background=dark
colorscheme gruvbox
" Disable colorscheme background color
hi Normal ctermbg=none

" Configure airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='sol'

" Configure pymode
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_options_max_line_length=120

" Configure rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Configure nerdtree
map <C-n> :NERDTreeToggle<CR>

" Set alternative ESC key
inoremap jk <ESC>

" Misc options
let mapleader = ","
:syn match Error "\v<[A-Z]+>"
set completeopt-=preview

" Function to calculate word count in .tex files
function! WC()
    let filename = expand("%")
    let cmd = "detex " . filename . " | wc -w"
    let result = system(cmd)
    echo result . "words"
endfunction
command WC call WC()
