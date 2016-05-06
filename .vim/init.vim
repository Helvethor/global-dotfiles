runtime config/**/*.vim


" Vim settings

syntax on
filetype plugin indent on

let mapleader=" "
set encoding=utf-8
set nocompatible
set number
set autowrite
set tabstop=4
set backspace=indent,eol,start
set mouse=a
set hlsearch
set autoindent
set laststatus=2
set noshowmode


" Pathogen, plugin manager

call pathogen#infect()
call pathogen#helptags()


" Easy-Motion

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

" j/k to move up/down
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)

nmap <Leader>l <Plug>(easymotion-lineforward)
nmap <Leader>h <Plug>(easymotion-linebackward)

" s for two chars jump
nmap <Leader>s <plug>(easymotion-s2)

" f for one char jump
nmap <Leader>f <Plug>(easymotion-overwin-f)


" Split configuration

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Copy/Paste - X11

vmap <C-C> "+y
nmap <C-V> "+p


" Lightline

" let g:lightline = {'colorscheme' : 'seoul256'}
let g:lightline = {'colorscheme' : 'hybrid'}


" Autocompletion

imap <Tab> <C-P>


" JavaComplete

autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>


" DelimitTab

imap <C-K> <Plug>delimitMateS-Tab


" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Theme

syntax enable

" set term=xterm
" set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
let g:hybrid_use_Xresources = 1

" colorscheme desert
colorscheme hybrid
" colorscheme hybrid_reverse
" colorscheme ego
" colorscheme gruvbox

"highlight Normal ctermbg=235 ctermfg=223

set background=dark


" Indent Guides

let g:indent_guides_auto_colors = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=235
autocmd VimEnter * :IndentGuidesEnable



