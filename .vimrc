call plug#begin()
 " File tree
 Plug 'preservim/nerdtree' 

 " LSP 
 Plug 'dense-analysis/ale'   

 " Git stuff
 Plug 'tpope/vim-fugitive'

 " Syntax highlighting
 Plug 'Glench/Vim-Jinja2-Syntax'
 Plug 'elixir-lang/vim-elixir'

 " Airline
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'

 " Theme stuff
 Plug 'morhetz/gruvbox'
call plug#end()


" Nerdtree configs - decide whether to switch to Fern
 autocmd vimenter * NERDTree
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 let g:NERDTreeWinSize = 18

" Theme
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
autocmd vimenter * colorscheme gruvbox
set bg=dark

" Ale 
let g:ale_warn_about_trialing_whitespace = 0

noremap <F2> :Fern . -drawer -width=40<CR>

" QOL stuff
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set hlsearch
set showmatch 
set ignorecase

" Keymappings

" Change between buffers in split mode
nmap <C-j> :wincmd k<CR>
nmap <C-k> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" Clear highlights
noremap <F3> :noh <CR> 

