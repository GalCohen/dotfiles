set encoding=utf-8
runtime! autoload/pathogen.vim
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()
execute pathogen#infect()

syntax on						"  syntax highlighting
set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
colorscheme solarized  " jellybeans

set nocompatible
set number                      " line numbers on
set nowrap						" wrap long lines
set tabstop=4					" an isndentation every four columns
set softtabstop=4               " let backspace delete indent
set shiftwidth=4                  " use indents of 4 spaces
set expandtab					" tabs are spaces, not tabstopset
set pastetoggle=<F2>            " allows text to be pasted with original alignment 
set autoindent                  " indets each line the same as the previous one
set smartindent                 " automatically inserts one extra level on indentation
set shortmess=atI               " short messages and dont show intro
" set virtualedit=onemore 	   	" allow for cursor beyond last character
filetype indent on 
filetype plugin indent on

" Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift. 
" nore ; :
" nore , ;

"set backup 						" backups are nice ...
"set undofile					" so is persistent undo ...
"set undolevels=1000 "maximum number of changes that can be undone
"set undoreload=10000 "maximum number lines to save for undo on a buffer reload

set showcmd 					" shows nomral mode key presses at the bottom 
set history=2000				 " Store a ton of history (default is 20)
" set spell						" spell checking on
set mouse=a						 " automatically enable	mouse usage
set confirm						" dialog asking to confirm things instead of error
set ruler						" show current position at bottm
set showmatch  				    " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set ignorecase                  " case insensitive search
"set wildmenu 				" Enhance command-line completion
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set foldenable                  " auto fold code"
" set tabpagemax=15               " only show 15 tabs
set showmode                    " display the current mode
"set linespace=0					" No extra spaces between rows
set cursorline                  " highlight current line
" hi CursorLine cterm=None ctermbg=235
" hi CursorColumn guibg=#333333

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow cursor keys in insert mode
" set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast

" Dont add empty newlines at the end of files
set binary
set noeol

" Show the filename in the window titlebar
set title

" make cursor move as expected with wrapped lines
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"use Enter to insert new lines
map <CR> o<Esc>k

" use Space to add spaces in cmd mode
map <Space> i<Space><Esc>


au FileType xhtml,xml so ~/.vim/bundle/HTML-AutoCloseTag/ftplugin/html_autoclosetag.vim

au! BufRead,BufNewFile *.json set filetype=json

"augroup json_autocmd 
"  autocmd! 
"  autocmd FileType json set autoindent 
" autocmd FileType json set formatoptions=tcq2l 
"  autocmd FileType json set textwidth=78 shiftwidth=2 
"  autocmd FileType json set softtabstop=2 tabstop=8 
"  autocmd FileType json set expandtab 
"  autocmd FileType json set foldmethod=syntax 
" augroup END 

imap jj <Esc>
cmap W w                        
cmap WQ wq
cmap wQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe

cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

cmap w!! w !sudo tee >/dev/null %"
" set t_Co=256
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set rtp+=/Users/galchook26/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
set laststatus=2


set tabstop=4					" an isndentation every four columns
set softtabstop=4               " let backspace delete indent
set shiftwidth=4                  " use indents of 4 spaces
set expandtab					" tabs are spaces, not tabstopset


let g:used_javascript_libs = 'underscore,backbone,jquery,prelude,angularjs,requirejs'
