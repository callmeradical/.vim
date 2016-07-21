execute pathogen#infect()
syntax on
colorscheme Crystallite
filetype plugin on
filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set nocp
set t_Co=256
set background=light
set number
set nowrap
set backspace=indent,eol,start
set hlsearch

map <F2> :NERDTreeToggle<CR>
map <F3> :bp<CR>
map <F4> :bn<CR>
nmap <F8> :TagbarToggle<CR>
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

autocmd BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.vim setlocal noet ts=2 sw=2 sts=2
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal noet ts=4 sw=4
autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:airline#extensions#tagbar#enabled = 1
let g:neocomplete#enable_at_startup = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

