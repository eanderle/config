set t_Co=256
set showcmd
colorscheme moria
filetype plugin indent on
syntax on

set expandtab
set tabstop=4
set shiftwidth=4

set guifont=Terminus\ 10
set guioptions=  "remove everything

set background=dark
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! <CR>
set nu
