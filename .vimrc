execute pathogen#infect()
syntax on
set expandtab
set tabstop=2
set shiftwidth=2
filetype plugin indent on
set nocp
set t_Co=256
filetype plugin on
set background=dark
colorscheme heroku
set number
set nowrap
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F2> :NERDTreeToggle<CR>
map <F3> :bp<CR>
map <F4> :bn<CR>
