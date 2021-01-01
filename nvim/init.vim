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

" GENERAL
set backspace=eol,start,indent
set number

" GUIDE RULES
set cursorline	     " draws a horizontal line under your cursor.
set colorcolumn=98   " draws a vertical line at the column number.

highlight colorcolumn ctermbg=DarkGray
highlight cursorline cterm=bold ctermbg=DarkGray


" WRAPPING
set nowrap           " never (visually) wrap lines that are longer than the window.
set sidescroll=5     " the horizontal scroll distance (min chars to jump).

" INDENTS
set expandtab	     " use spaces instead of tabs.
set smarttab
set shiftwidth=2     " 1 tab == 4 spaces.
set tabstop=2
set softtabstop=2

" SEARCH
set ignorecase       " ignore case when searching.
set smartcase        " override ignore case when search pattern contains uppercase characters.
set hlsearch         " highlight search results.
set incsearch        " show search results as the pattern is typed.

" SOURCE FILES
syntax enable        " enable syntax highlighting. 

set comments=sl:/*,mb:\ *,elx:\*/  " doesn't seem to work in regular files!? Investigate.
