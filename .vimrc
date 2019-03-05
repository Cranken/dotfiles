inoremap jk <ESC>


set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'kana/vim-operator-user'
Plugin 'rhysd/vim-clang-format'
Plugin 'leafgarland/typescript-vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

set number
set rnu
set nowrap
set backspace=indent,eol,start

set incsearch
set showmode
set nocompatible
filetype on
set wildmenu
set ruler
set lz
set hid
set softtabstop=4
set tabstop=4
set shiftwidth=4
autocmd FileType typescript setlocal softtabstop=2
autocmd FileType typescript setlocal tabstop=2
autocmd FileType typescript setlocal shiftwidth=2
set expandtab
set autoindent
set smartindent
set cindent
set ai
set si
set cin
set mouse=a
set cursorline
set numberwidth=6
set encoding=utf-8

let mapleader = "\<Space>"

nnoremap t <Plug>(operator-clang-format)
autocmd FileType c,cpp nnoremap <Leader>f :ClangFormat<CR>
autocmd FileType c,cpp vnoremap <Leader>f :ClangFormat<CR>

let g:clang_library_path='/lib/libclang.so'
let g:clang_auto_select=1
let g:clang_close_preview=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_cpp_checker = 0
let g:syntastic_cpp_checkers=['']
let g:syntastic_typescript_checkers=['tslint']

autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
autocmd FileType javascript ClangFormatAutoEnable

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
