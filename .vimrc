"  ___      ___  __   ___  
" |"  \    /"  ||/"| /  ") Maros Kukan
"  \   \  //   |(: |/   /  https://buldogchef.com
"  /\\  \/.    ||    __/   https://github.com/maroskukan
" |: \.        |(// _  \   
" |.  \    /:  ||: | \  \  
" |___|\__/|___|(__|  \__)
"
" A customized .vimrc for vim (https://www.vim.org)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Pathogen - plugin management
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set bg          =dark
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
set nocompatible
set foldlevelstart=20
syntax on
filetype on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
abbr _sh #!/usr/bin/env bash

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-N> :set invnumber<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom autocmds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType yaml setlocal ai et ts=2 sts=2 sw=2 cuc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin indentLine - indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '⦙'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin ALE - linting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
