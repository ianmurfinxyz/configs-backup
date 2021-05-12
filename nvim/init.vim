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
"
"------------------------------------------------------------------------------------------------"

"------------------------------------------------------------------------------------------------"
" TODO
"
" - Create some color schemes for specific file types. The scheme I just
"   whipped up looks aweful for vimscript but not too bad for C++.
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
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}

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
set colorcolumn=98   " draws a vertical line at the column number. old:98

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

" status line design (see :help statusline).
set statusline=FILE:\ %.30F\ %y     " full file path and file type.
set statusline+=\ \ LINE:%l/%L/%p   " line number/total lines/percentage pos in file.
set statusline+=\ \ COL:%c          " column number.

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
set background=light
colorscheme PaperColor

"------------------------------------------------------------------------------------------------"
" MAPPINGS - general
"------------------------------------------------------------------------------------------------"

:let mapleader='`'    " prefix char prior to all my custom mappings.

" erc = edit rc file.
:nnoremap <leader>erc :split $MYVIMRC<cr>            

" rrc = reload rc file.
:nnoremap <leader>rrc :so $MYVIMRC<cr>

" toggle relative numbers.
:nnoremap <leader>rn :set relativenumber!<cr>

" unload the active buffer.
:nnoremap <leader>q :bdelete<cr>

" save and then unload the active buffer.
:nnoremap <leader>wq :w<cr>:bdelete<cr>

" faster scrolling
:nnoremap <S-j> 10j
:nnoremap <S-k> 10k
:nnoremap <S-h> 10h
:nnoremap <S-l> 10l

" window navigation.
:nnoremap <leader>h <C-w>h       " focus window on left
:nnoremap <leader>j <C-w>j       " focus window below
:nnoremap <leader>k <C-w>k       " focus window above
:nnoremap <leader>l <C-w>l       " focus window on right

"------------------------------------------------------------------------------------------------"
" MAPPINGS - C/C++ source files
"------------------------------------------------------------------------------------------------"

" TODO
" - add a conditional so these are only applied when editing c/c++ source
"   files.



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
"
" TODO
" - add a conditional so these are only applied when editing c/c++ source
"   files.

" code region divider
:abbr __div 
  \"------------------------------------------------------------------------------------------------"<cr>
  \"                                                                                                "<cr>
  \"------------------------------------------------------------------------------------------------"<cr>
  \<esc>2k<k0>2l<S-r>

" c/cpp code region divider
:abbr __cdiv 
  \//----------------------------------------------------------------------------------------------//<cr>
  \//                                                                                              //<cr>
  \//----------------------------------------------------------------------------------------------//<cr>
  \<esc>2k<k0>2l<S-r>


" class body
" TODO the last line could be cleaned up a bit; there must be a more efficient
" key sequence to setup entering the class name.
:abbrev __class 
  \class NAME<cr>
  \{<cr>
  \public:<cr>
  \private:<cr>
  \};<cr>
  \<esc>2k2xk2x3k2eciw<BS>

" function body
:abbrev __func 
  \RETVAL FUNCNAME()<cr>
  \{<cr>
  \}<cr>
  \<esc>kkk

"------------------------------------------------------------------------------------------------"
" ADD MOUSE SUPPORT
"------------------------------------------------------------------------------------------------"

" allows dragging borders of vim windows to resize, using mouse to scroll, and placing the cursor 
" with a mouse click.
set mouse=a
