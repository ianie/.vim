execute pathogen#infect()
call pathogen#helptags()
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

"Fast tabs
map ˚ gt
map ∆ gT
map † :tabnew<CR>
map ≈ :tabclose<CR>

"This stops autocomplete from opening a new window
set completeopt-=preview
"autocmd FileType python setlocal completeopt-=preview
"autocmd FileType pyrex setlocal completeopt-=preview

let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_enabled = 0
let g:jedi#completions_command = ""
"1 is for inline, 2 is for command bar (buggy)
let g:jedi#show_call_signatures = "1"
let g:jedi#documentation_command = "<leader>K"

"command-t
let g:CommandTToggleFocusMap='C-m'

"Tagbar
nmap <leader>T :TagbarToggle<CR>

"We already have vim-airline
set noshowmode

"Allow/detect triple quotes
autocmd FileType python let b:delimitMate_nesting_quotes = ['"']
autocmd FileType pyrex let b:delimitMate_nesting_quotes = ['"']

" Golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
