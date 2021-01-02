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
set textwidth=0      " disable text wrapping.

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

"------------------------------------------------------------------------------------------------"
" MAPPINGS     
"------------------------------------------------------------------------------------------------"

:let mapleader='`'    " prefix char prior to all my custom mappings.

:nnoremap <leader>erc :edit $MYVIMRC<cr>            " erc = edit rc file.

"------------------------------------------------------------------------------------------------"
" ABBREVIATIONS - C/C++ source files
"------------------------------------------------------------------------------------------------"

" C/C++ source file header
":abbrev __cpphead  
" TODO need to learn more vim script to get this implemented. What I want is a header which can
" be easily inserted which includes information obtained from functions such as the name of the 
" file and the date in which the file was created and last edited. Apparantly the last edit date
" can be updated each time you edit the file (see https://vim.fandom.com/wiki/Insert_current_date_or_time)
" which would be good so should look into that too. Also see (https://vim.fandom.com/wiki/Get_the_name_of_the_current_file)
" to get name of current file.
"      \"------------------------------------------------------------------------------------------------"<cr>
"      \                                                                                                "<cr>
"      \ FILE: <C-R>=expand('%:t')<cr>                                                                  "<cr>
"      \------------------------------------------------------------------------------------------------"<cr>

" class body
" TODO the last line could be cleaned up a bit; there must be a more efficient
" key sequence to setup entering the class name.
:abbrev __class 
  \class NAME<cr>
  \{<cr>
  \public:<cr>
  \private:<cr>
  \};<cr>
  \<esc>5k2eciw<BS>

" function body
:abbrev __func 
  \RETVAL FUNCNAME()<cr>
  \{<cr>
  \}<cr>
  \<esc>kkk

