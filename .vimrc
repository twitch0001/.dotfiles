call plug#begin() 
 " Misc
 Plug 'https://github.com/twitch0001/vimsence.git' " Fork of the fork of vimsence so I can have the Elixir logo
 Plug 'scrooloose/nerdtree'
 Plug 'tpope/vim-fugitive'
    
 " Syntax highlighting.
 Plug 'Glench/Vim-Jinja2-Syntax'
 Plug 'elixir-lang/vim-elixir'
    
 " Airline
 Plug 'vim-airline/vim-airline' 
 Plug 'vim-airline/vim-airline-themes'

 " Theme stuff
 Plug 'morhetz/gruvbox'
call plug#end()

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:airline_theme='gruvbox'
autocmd vimenter * colorscheme gruvbox
set bg=dark

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandt
