﻿"set nocompatible               " be iMproved
"filetype off                   " required!
let mapleader=','

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

noremap <F4> :set hlsearch! hlsearch?<CR>
noremap <F3> :set nonumber! nonumber?<CR>
noremap <C-c> :set hlsearch! hlsearch?<CR>

Bundle 'gmarik/vundle'

Bundle 'colorschemer'
Bundle 'noahfrederick/vim-noctu'
if has("win32") && !has("gui_running")
  set t_Co=16
  colorscheme noctu
else
  set t_Co=256
  colorschem xoria256
endif



Bundle 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" 快速注释，主要是[count]<leader>cc, cu, ci, cy, cs, cA, cm
Bundle 'scrooloose/nerdcommenter'

"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler = 'cppcheck'
Bundle 'scrooloose/syntastic'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -g -Weffc++ -Wshadow -Werror -Wall -Wextra '

Bundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>


Bundle 'vim-cpp-enhanced-highlight'
Bundle 'DoxygenToolkit.vim'
let g:DoxygenToolkit_commentType = "C++" 
Bundle 'xuhdev/SingleCompile'
nmap <F5> :w! <CR> :SCCompileRun<CR>
autocmd Filetype cpp nmap <buffer> <F5> :SCCompileRunAF  -std=c++11 -g -Weffc++ -Wshadow -Werror -Wall -Wextra <CR>
Bundle 'vimwiki/utils'
Bundle 'vimwiki/vimwiki'

" 快速查找
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

map / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" JK motions: Line motions
" Gif config
"map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion


Bundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '>'
noremap <F1> :bprev!<CR> 
noremap <F2> :bnext!<CR> 
noremap <C-left> :bprev!<CR> 
noremap <C-right> :bnext!<CR> 
noremap <C-h> :bprev!<CR> 
noremap <C-l> :bnext!<CR> 
noremap <C-h> :bprev!<CR> 
"noremap <C-w> :bd!<CR> 
"inoremap <C-l> <ESC> :bnext!<CR> 
"inoremap <C-h> <ESC> :bprev!<CR> 
"inoremap <C-w> <ESC> :bd!<CR> 

"Bundle 'garbas/vim-snipmate'
Bundle 'kien/ctrlp.vim'

Bundle 'Valloric/ListToggle'
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10


"F7
Bundle 'funorpain/vim-cpplint'

Bundle 'Chiel92/vim-autoformat'
let g:formatprg_cpp='astyle'
"let g:formatprg_args_cpp='--style=google --indent=spaces=2 --attach-namespaces --attach-classes --indent-modifiers --indent-switches --indent-cases --pad-oper --pad-header --align-pointer=type --align-reference=type --convert-tabs --max-code-length=80 --break-after-logical --lineend=linux'
let g:formatprg_args_cpp = ''
let g:formatprg_args_cpp.= ' '. '--style=google'
let g:formatprg_args_cpp.= ' '. '--indent=spaces=2'
let g:formatprg_args_cpp.= ' '. '--attach-namespaces'
let g:formatprg_args_cpp.= ' '. '--attach-classes'
let g:formatprg_args_cpp.= ' '. '--indent-modifiers'
let g:formatprg_args_cpp.= ' '. '--indent-switches'
let g:formatprg_args_cpp.= ' '. '--indent-cases'
let g:formatprg_args_cpp.= ' '. '--pad-oper'
let g:formatprg_args_cpp.= ' '. '--pad-header'
let g:formatprg_args_cpp.= ' '. '--align-pointer=type'
let g:formatprg_args_cpp.= ' '. '--align-reference=type'
let g:formatprg_args_cpp.= ' '. '--convert-tabs'
let g:formatprg_args_cpp.= ' '. '--max-code-length=80'
let g:formatprg_args_cpp.= ' '. '--break-after-logical'
let g:formatprg_args_cpp.= ' '. '--lineend=linux'
noremap <F6> :Autoformat<CR><CR>

filetype plugin indent on

source ~/.vim/darrenhp_vimrc

