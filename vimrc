execute pathogen#infect()
filetype plugin indent on
syntax on
set background=dark
set t_Co=256
colorscheme solarized
set number
set mouse=a

"Tabs
set expandtab
set tabstop=4
set shiftwidth=4
autocmd FileType html
    \ setlocal shiftwidth=2 |
    \ setlocal tabstop=2

set undofile
set undodir=~/.vim/undodir
set foldmethod=indent
set foldlevel=99
set ic
map <leader>G :GundoToggle<CR>
map <leader>N :NERDTreeToggle<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Fast tab switching
map ˚ gt
map ∆ gT

"This stops autocomplete from opening a new window
autocmd FileType python setlocal completeopt-=preview
autocmd FileType pyrex setlocal completeopt-=preview

let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_enabled = 0
let g:jedi#completions_command = ""
"1 is for inline, 2 is for command bar (buggy)
let g:jedi#show_call_signatures = "0"
let g:jedi#documentation_command = "<leader>K"

"We already have vim-airline
set noshowmode

"Allow/detect triple quotes
autocmd FileType python let b:delimitMate_nesting_quotes = ['"']
autocmd FileType pyrex let b:delimitMate_nesting_quotes = ['"']
