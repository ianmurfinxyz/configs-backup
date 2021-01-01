"------------------------------------------------------------------------------------------------"
"                                                                                                "
"               |>>>                                                                             "
"               |                                                                                "
"               *   /\                                                                           "
"              / \  ||                                                                           "
"             /   \//                                                                            "
"            /     \|                                                                            "
"          /         \                                                                           "
"          {*********}                                                                           "
"           \-------/                                                                            "
"           |   ^   |                                                                            "
"           |   I   |                                                                            "
"          |#########|                                                                           "
"          \*********/   |             ## #   ###  # ## #   # # #                                "
"           |       |    \  _          # # # #   # ##   #     ## #                               "
"           | /\  I |     \/           # # # ####  #    #   # #  #                               "
"           | ||    |     | _          # # # #     #    #   # #  #                               "
"      _    ||==|   |     |/           # # #  ###  #     ## # #  #                               "
"    _/ \   | \==\  |     |                                                                      "
"   \    | /   \==\ \    / \_                                                                    "
"   /    |/  __ \==\ \   |   \                                                                   "
"  /     \__/  \########/     \                                                                  "
"                                                                                                "
" FILE: ~/.config/nvim/init.vim - neovim config                                                  "
" AUTHOR: merlin - Ian Murfin - github.com/ianmurfinxyz                                          "
"                                                                                                "
" CREATED: 01-01-2021                                                                            "
" UPDATED: 01-01-2021                                                                            "
"                                                                                                "
"------------------------------------------------------------------------------------------------"

"------------------------------------------------------------------------------------------------"
" TODO
"
" - Create some color schemes for specific file types. The scheme I just
"   whipped up looks aweful for vimscript but not too bad for C++.
"
" - Design a status line format. (see help status-line and help statusline)
"
"------------------------------------------------------------------------------------------------"

"------------------------------------------------------------------------------------------------"
" PLUGINS - managed with vim-plug (see https://github.com/junegunn/vim-plug)
"
" note: When you add a new plugin you must add it to this file, reload .vimrc and run 
" :PlugInstall to actually download the plugin into the plugins dir.
"------------------------------------------------------------------------------------------------"

call plug#begin(stdpath('data').'/plugged')

Plug 'https://github.com/NLKNguyen/c-syntax.vim'
Plug 'https://github.com/NLKNguyen/papercolor-theme'

call plug#end()

"------------------------------------------------------------------------------------------------"
" GENERAL
"------------------------------------------------------------------------------------------------"
set backspace=eol,start,indent
set number

"------------------------------------------------------------------------------------------------"
" GUIDE RULES
"------------------------------------------------------------------------------------------------"
set cursorline	     " draws a horizontal line under your cursor.
set colorcolumn=98   " draws a vertical line at the column number.

highlight colorcolumn ctermbg=DarkGray
highlight cursorline cterm=bold ctermbg=DarkGray

"------------------------------------------------------------------------------------------------"
" WRAPPING
"------------------------------------------------------------------------------------------------"
set nowrap           " never (visually) wrap lines that are longer than the window.
set sidescroll=5     " the horizontal scroll distance (min chars to jump).

"------------------------------------------------------------------------------------------------"
" INDENTS
"------------------------------------------------------------------------------------------------"
set expandtab	     " use spaces instead of tabs.
set smarttab
set shiftwidth=2     " 1 tab == 4 spaces.
set tabstop=2
set softtabstop=2

"------------------------------------------------------------------------------------------------"
" SEARCH
"------------------------------------------------------------------------------------------------"
set ignorecase       " ignore case when searching.
set smartcase        " override ignore case when search pattern contains uppercase characters.
set hlsearch         " highlight search results.
set incsearch        " show search results as the pattern is typed.

"------------------------------------------------------------------------------------------------"
" UI    
"------------------------------------------------------------------------------------------------"

set wildmenu         " changes pop-up menu when autocompleting to a horizontal menu.
set so=10            " the line margin above/below in which scolling beings.

set laststatus=2     " always show the status line.

"------------------------------------------------------------------------------------------------"
" PERFORMACE
"------------------------------------------------------------------------------------------------"

set lazyredraw

"------------------------------------------------------------------------------------------------"
" SOURCE FILES
"------------------------------------------------------------------------------------------------"
syntax enable        " enable syntax highlighting. 

set comments=sl:/*,mb:\ *,elx:\*/  " doesn't seem to work in regular files!? Investigate.

set showmatch        " show matching brackets when cursor is over them.
set mat=2            " how many tenths of a second to blink when matching brackets.

"------------------------------------------------------------------------------------------------"
" COLOR SCHEMES
"------------------------------------------------------------------------------------------------"
set background=dark
colorscheme PaperColor


