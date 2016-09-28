" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available

set showmatch

set cindent
set autoindent
set smartindent

syntax enable
syntax on

set cursorline
set cursorcolumn

set number
set ruler

filetype indent on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set hlsearch

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


set nocompatible        " iMproved
filetype off            " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
" Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/TabBar'
Bundle 'scrooloose/nerdcommenter'

" vim-scripts repos
" Bundle 'jsbeautify'

filetype plugin indent on     " required

" Brief help
" :BundleList - list configured bundles
" :BundleInstall - install(update) bundles
" :BundleSearch(!) - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"

" autocmd vimenter * NERDTree
nmap <F7> :NERDTreeToggle<CR>
let NERDTreeWinSize=25
let NERDTreeWinPos="right"

let g:ycm_global_ycm_extra_conf = '/home/hulkyu/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

set completeopt=longest,menu
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
"let g:ycm_always_populate_location_list=1
"nnoremap gl :YcmCompleter GoToDeclaration<CR>
nmap gl :YcmCompleter GoToDeclaration<CR>
nmap <leader>gd :YcmCompleter GoToDefinition<CR>
"nmap <leader>ga :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
let g:tagbar_left=1
map wt :TagbarToggle<CR>

let g:NERDSpaceDelims=1
nmap ,cc  <leader>cc =
