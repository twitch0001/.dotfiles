call plug#begin()
 " Misc
 Plug 'scrooloose/nerdtree'
 Plug 'tpope/vim-fugitive'
 Plug 'hugolgst/vimsence'

 " Syntax highlighting.
 Plug 'Glench/Vim-Jinja2-Syntax'
 Plug 'elixir-lang/vim-elixir'

 " Airline
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'

 " Theme stuff
 Plug 'morhetz/gruvbox'
call plug#end()

" Nerdtree configs
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize = 18

" Theme
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
autocmd vimenter * colorscheme gruvbox
set bg=dark

" QOL Stuff
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number

" Keybindings to change between buffers in split mode
nmap <C-j> :wincmd k<CR>
nmap <C-k> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" Highlight all search matches
set hlsearch
