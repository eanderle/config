syntax enable
set background=dark

" various terminal incantations
set t_Co=256
set showcmd
set nocompatible
set backspace=indent,eol,start
filetype off " required

" powerline?!
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'altercation/vim-colors-solarized'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-latex/vim-latex'

let g:ycm_autoclose_preview_window_after_completion = 1

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" text settings
set ignorecase
set smartcase

set expandtab
set tabstop=4
set shiftwidth=4

" visual settings
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

" tex
let g:Tex_DefaultTargetFormat = 'pdf'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:Tex_IgnoredWarnings =
            \'Underfull'."\n".
            \'Overfull'."\n".
            \'specifier changed to'."\n".
            \'You have requested'."\n".
            \'Missing number, treated as zero.'."\n".
            \'There were undefined references'."\n".
            \'Citation %.%# undefined'."\n".
            \'Double space found.'."\n".
            \'LaTeX Font Warning'."\n"

let g:Tex_IgnoreLevel = 10

" vimwiki
" apparently mapleader is a GLOBAL setting, so latex compilation is now ,ll
:let mapleader=","
let g:vimwiki_list = [
            \{'path': '~/mnt/crypto/personal/vimwiki'}
        \]
