execute pathogen#infect()
filetype plugin indent on
syntax on
set background=dark
set t_Co=256
colorscheme solarized
set number
set mouse=a
set expandtab
set tabstop=4
set shiftwidth=4
set undofile
set undodir=~/.vim/undodir
set foldmethod=indent
set foldlevel=99
map <leader>G :GundoToggle<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"This stops autocomplete from opening a new window
autocmd FileType python setlocal completeopt-=preview

"This is from supertab old stuff.
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,longest,preview

"1 is for inline, 2 is for command bar (buggy)
let g:jedi#show_call_signatures = "1"

"We already have vim-airline
set noshowmode

"Make sure the status bar always appears even when there is only 1 window.
set laststatus=2
