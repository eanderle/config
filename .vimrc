syntax enable
set background=dark
colorscheme solarized

set t_Co=256
set showcmd
set nocompatible
set backspace=indent,eol,start

" powerline?!
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/ctrlp.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'derekwyatt/vim-scala'
Bundle 'Valloric/YouCompleteMe'
Bundle 'godlygeek/tabular'
Bundle 'altercation/vim-colors-solarized'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ycm_autoclose_preview_window_after_insertion = 1

filetype plugin indent on

set ignorecase
set smartcase

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

" Highlight whitespace thing
highlight ExtraWhitespace ctermbg=red guibg=red
augroup WhitespaceMatch
  " Remove ALL autocommands for the WhitespaceMatch group.
  autocmd!
  autocmd BufWinEnter * let w:whitespace_match_number =
        \ matchadd('ExtraWhitespace', '\s\+$')
  autocmd InsertEnter * call s:ToggleWhitespaceMatch('i')
  autocmd InsertLeave * call s:ToggleWhitespaceMatch('n')
augroup END
function! s:ToggleWhitespaceMatch(mode)
  let pattern = (a:mode == 'i') ? '\s\+\%#\@<!$' : '\s\+$'
  if exists('w:whitespace_match_number')
    call matchdelete(w:whitespace_match_number)
    call matchadd('ExtraWhitespace', pattern, 10, w:whitespace_match_number)
  else
    " Something went wrong, try to be graceful.
    let w:whitespace_match_number =  matchadd('ExtraWhitespace', pattern)
  endif
endfunction
