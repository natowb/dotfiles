syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number
set termguicolors


call plug#begin()
" Functionality
Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user'

" Themes
Plug 'drsooch/gruber-darker-vim'

call plug#end()

colorscheme GruberDarker 
let mapleader="\<Space>"

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" Spaces Only
" https://gist.github.com/LunarLambda/4c444238fb364509b72cfb891979f1dd
set expandtab
set tabstop=4      " Optional, if you want files with tabs to look the same too.
set shiftwidth=4
set softtabstop=-1 " Use value of shiftwidth
set smarttab       " Always use shiftwidthp


" Disable parentheses matching depends on system. This way we should address all cases (?)
set noshowmatch
" NoMatchParen " This doesnt work as it belongs to a plugin, which is only loaded _after_ all files are.
" Trying disable MatchParen after loading all plugins
"
function! g:FckThatMatchParen ()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup plugin_initialize
    autocmd!
    autocmd VimEnter * call FckThatMatchParen()
augroup END
