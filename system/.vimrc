colorscheme onedark
syntax enable	" enable syntax highlighting
set tabstop=4	" 1 tab = 4 spaces
set expandtab 	" tabs are spaces
set number	" show line numbers
set showcmd 	" show command in bottom bar
set cursorline 	" highlight current line of cursor
set wildmenu 	" visual auto-complete for command menu
set showmatch 	" highlight matching braces/parens/brackets
set incsearch 	" search as chars are entered
set hlsearch 	" highlight matches

let mapleader = ","

" turn off search highlight (reset it) - keymappted to ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" jj instead of escape
inoremap jj <esc>

nmap <F3> i<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

set backspace=indent,eol,start


"------------ VUNDLE ----------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" For Elixir dev
Plugin 'slashmili/alchemist.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
set hidden
let g:racer_cmd = "/Users/zachking/.cargo/bin/racer"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

"autocmd vimenter * NERDTree
map <C-e> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif" Put your non-Plugin stuff after this line

" For CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*,*.pyc     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/](venv)$'

let NERDTreeShowHidden=1

" Airline (status bar) customization
let g:airline_theme='alduin'
let g:airline#extensions#tabline#enabled = 1

" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

filetype plugin on
