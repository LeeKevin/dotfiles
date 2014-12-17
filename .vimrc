execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible   " Disable vi-compatibility
set t_Co=256

colorscheme xoria256-pluk
set guifont=menlo\ for\ powerline:h16
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a

" With a map leader it's possible to do extra key combinations
" " like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

""Fast saves
nmap <leader>w :w!<cr>

"Easy escaping to normal model
imap jj <esc>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation
nmap <C-Left> <C-w><Left>
nmap <C><Down> <C-w><Down>
nmap <C><Up> <C-w><Up>
nmap <C-Right> <C-w><Right>

nmap vs :vsplit<cr>
nmap sp :split<cr>

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

nmap <C-b> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

"Show (partial) command in the status line
set showcmd

"" Create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

highlight Search cterm=underline

" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Powerline (Fancy thingy at bottom stuff)
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

""Remove search results
command! H let @/=""

set ai
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_hsplit_size = 5 
let g:buffergator_split_size = 5 
set hidden

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Commenting
nmap <C-c> :TComment<cr>

" CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**

inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
noremap <Leader>e :call PhpExpandClass()<CR>

nmap <Leader><Space> :TagbarToggle<CR>

set pastetoggle=<Leader>o

set tags=./tags;
let g:easytags_dynamic_files = 1

" Edit todo list for project
nmap ,todo :e todo.txt<cr>

" Map documentation function:
" autocmd FileType php inoremap <C-m> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-m> :call PhpDocSingle()<CR>i
" autocmd FileType php vnoremap <C-m> :call PhpDocRange()<CR> 


