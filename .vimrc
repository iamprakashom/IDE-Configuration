"===========================================================================================
"Basic Settings
"==========================================================================================
syntax on           " Systax highlighting
filetype on         " Try to detect filetypes
filetype plugin on  "Enable filetype-specific plugin
filetype indent on  "Enable loading indent for filetype
set title           " Display title in console title bar
set wildmenu        " Menu completion in command mode on <Tab>
set wildmode=full   " <Tab> cycles between all matching choices.
set cursorline      " Highlight current line
set showmatch       " Show matching bracket
set showmode        " Show current mode
set autoread        " Auto read file update from other place

"==========================================================================================
"Showing line numbers and length
"==========================================================================================
set number          " Display line numbers
set tabstop=4
set softtabstop=4
set expandtab
set textwidth=80
set showcmd 

"==========================================================================================
"Search Setting
"=========================================================================================
set incsearch       " Search as character are entered
set hlsearch        " Highlight matches
set matchtime=5     " Blink matching chars for 5 seconds
set smartcase
set ignorecase
set autoread
