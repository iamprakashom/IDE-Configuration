"vundle Plugin
set nocompatible
filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Powerline Plugin to show status line
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}


"ColorScheme Plugin
"===========================================================================================

" Plugin vim-color-slolarized
"Plugin 'altercation/vim-colors-solarized'

" Plugin vim-color-schemes(Best 4 me)
Plugin 'cohlin/vim-colorschemes'

"============================================================================================

" Plugin Neosnippet plugin for code snipped completion
"Plugin 'Shougo/neocomplete'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'

" Plugin Neocamplcache for autocompletion
"Plugin 'Shougo/neocomplcache.vim'

"Code Folding
Plugin 'tmhedberg/SimpylFold'

"Plugin to must have for a Python developer
"Plugin 'klen/python-mode'

"Auto-Completion
Plugin 'Valloric/YouCompleteMe'


"SuperTab: word autocompletion on the fly
Plugin 'vim-scripts/supertab'

"========Python syntax checker=============
"PEP8 validation
"Plugin 'nvie/vim-flake8'

" Plugin autopep8 for auto fixing pep8 error
Plugin 'tell-k/vim-autopep8'

"Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'

" Plugin Pydinction for <TAB> completion
Plugin 'vim-scripts/Pydiction'

" Syntax Checker Plugin for Many programming language 
Plugin 'scrooloose/syntastic'
"==========================================

"File Browsing Support using NerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"VIM Table Mode for instant table creation
Plugin 'dhruvasagar/vim-table-mode'

"Jedi Autocompletion library
Plugin 'davidhalter/jedi-vim'

Plugin 'Yggdroot/indentLine'

" Nerd Commenter for commenting
Plugin 'scrooloose/nerdcommenter'

" DelimitMate: Intelligent autocomplete for quotes, parenteses, brackets.
Plugin 'Raimondi/delimitMate' 

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
" Put your non-Plugin stuff after this line



"================================================================================
"Basic Settings
"================================================================================
syntax on           		" Systax highlighting
"filetype on		        " Try to detect filetypes
filetype plugin on	        " Enable filetype-specific plugin
filetype indent on	        " Enable loading indent for filetype
set title           	    " Display title in console title bar
set wildmenu        	    " Menu completion in command mode on <Tab>
set wildmode=full   	    " <Tab> cycles between all matching choices.
set cursorline      	    " Highlight current line
set showmatch       	    " Show matching bracket
set mat=2       		    " How many tenths of a second to blink when matching brackets
set showmode        	    " Show current mode
set autoread        	    " Auto read file update from other place
set clipboard=unnamedplus 	" Enable system clipboard for VIM
set encoding=utf-8  	    " set character encoding to UTF-8
"set statusline+=%Y  	    " %Y shows the filetype, such as VIM or HTML or GO


set splitright	    	    " set Split window to right
set noswapfile              " I don't like swap files
set foldmethod=indent       " Folding based on indentation
set cmdheight=1             " Height of the command bar
"colorscheme blue           " Setting Color Scheme
set bs=indent,eol,start

set laststatus=2            " Always display the statusline in all window[Powerline Plugin]
set showtabline=2           " Always display the tabline, even if there is only one tab[Powerline Plugin]


" Solarized stuff
set t_Co=256
"let g:solarized_termtrans = 1
"set background=dark
"colorscheme solarized

"Molokai Colorscheme
"let g:molokai_original = 1  "match the original monokai background color
"let g:rehash256 = 1         " 256 color version as close as possible dark GUI version.

" Airline theme
let g:airline_theme = "darcula"

" Vim colorscheme
colorscheme py-darcula

set shiftwidth=4            " Set shiftwidth for Idnetion[for tab]"
set autoindent              " Keep indentation from previous line in some cases"
"================================================================================
"Showing line numbers and length
"================================================================================
set number                  " Display line numbers
set tabstop=4               " A hard TAB displays as 4 columns
set softtabstop=4           " Insert/delete 4 space when hitting TAB/BACKSPACE
set expandtab               " Insert spaces when hitting TABs
set textwidth=79            " Lines longer than 79 columns will be broken
set showcmd 

"================================================================================
"Search Setting
"================================================================================
set incsearch               " Search as character are entered
set hlsearch                " Highlight matches
set matchtime=5             " Blink matching chars for 5 seconds
set smartcase
set ignorecase
set autoread

"Split Navigation
nnoremap <C-J> <C-W><C-J>	"Ctrl-j move to the split below
nnoremap <C-K> <C-W><C-K>	"Ctrl-k move to the split above
nnoremap <C-L> <C-W><C-L>	"Ctrl-l move to the split to the right
nnoremap <C-H> <C-W><C-H>	"Ctrl-h move to the split to the left

"Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with the spacebar
nnoremap <space> za

"use space to open folds
nnoremap <space> za         "Docstring for folded Code

let g:SimpylFold_docstring_preview=1

"==============================================================================
"Python Stuff
"==============================================================================

"PEP8 identation support for Python

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw,*.c,*.h set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4
au BufRead,BufNewFile *.py,*.c,*.h  set textwidth=79

"Pydinction Stuff
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'


" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Keep indentation level from previous line:
autocmd FileType python set autoindent

"Folding based on indentation:
autocmd FileType python set foldmethod=indent

" autopep8 configuration
autocmd FileType python map <buffer> <F8> :call Autopep8()<CR>
let g:autopep8_max_line_length=79


" Pymode Plugin 
let g:pymode_options = 1
let g:pymode_options_max_line_length = 79
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_run = 1
let g:pymode_run_bind = '<F5>'
let g:pymode_lint_on_fly = 0
let g:pymode_warnings = 1
let g:pymode_lint_checkers = ['pep8']

"----------Stop python PEP 8 stuff--------------

" Syntax Checker Plugin for most of the language including python
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_checkers = ['pep8']
"let g:syntastic_python_flake8_args = ['-m', 'flake8']       "flake8 checker for python3
let g:syntastic_c_checkers = ['c']
let g:syntastic_cpp_checkers = ['cpp']
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = ' -std=c++0x'

"jedi-vim autocompletion for python3
"let g:jedi#force_py_version = 3
"==============================================================================
"Pytho Stuff ends
"==============================================================================



"Web Development support for js, html, css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"==============================================================================
"Neocomplete Configuraion
"=============================================================================
" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


"Making Auto-complete Faster for YouCompleteMe
let g:ycm_python_binary_path = '/usr/bin/python3'       " for python3.x autocompletion
let g:ycm_python_binary_path = 'python'                 " for python2.x autocompletion
let g:ycm_autoclose_preview_window_after_completion=1	" autocomplete window goes away when done
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>	" shortcut for goto definition

"For full syntax highlighting:
"let python_highlight_all=1

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


