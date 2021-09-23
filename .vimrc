" ===========================================
" Vim scripts inspired by Debian
" NOTE: place them before the `filetype` line
" ===========================================
packadd! color_sampler_pack             " Lots of color schemes
packadd! nerd-commenter                 " Smart code commenting
map <C-_> <plug>NERDCommenterToggle     " <CTRL>-slash toggles comments
packadd! python-indent                  " Proper Python indentation


" =======
" General
" =======
syntax on                               " Syntax highlight
filetype plugin indent on               " Detect file types & load plugin + indent files
set encoding=utf-8                      " UTF-8 encoding
set fileformat=unix                     " LF line breaks
set number                              " Display line numbers ...
set numberwidth=1                       " ... and pad single digits
set title                               " Show title in the title bar

" Don't bell or blink
set noerrorbells
set vb t_vb=

" Menu completion
set wildmenu                            " <TAB> triggers completion
set wildmode=longest,list,full          " BASH-like completion & cycle through


" =====
" Panes
" =====
set splitbelow                          " More intuitive horizontal window split
set splitright                          " More intuitive vertical window split

" <SHIFT> + [jkhl] to move around panes
nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-H> <C-W><C-H>
nnoremap <S-L> <C-W><C-L>


" =======
" Colours
" =======
set background=dark                     " Dark background optimization

" More readable colours
highlight String ctermfg=Green          " Green strings
highlight Constant ctermfg=DarkYellow   " Orange values
highlight Comment ctermfg=Blue          " Blue comments


" ======
" Search
" ======
set ignorecase                          " Case-insensitive search ...
set smartcase                           " ... unless uppercase letters are used
set smarttab                            " Handle tabs
set hlsearch                            " Highlight search results
set incsearch                           " Search while typing


" ======
" Editor
" ======
set pastetoggle=<F4>                    " <F4> toggles paste mode (no indentation)
set colorcolumn=80                      " (Ugly) vertical highlight at column #80
set cursorline                          " Horizontal line where the cursor is
set ruler                               " 'line #,column #' of the cursor at the bottom-right
set virtualedit=block                   " Let the cursor move past the last char in <C-v> mode
set showmatch                           " Highlight matching brackets
set linebreak                           " Don't wrap text in the middle of a word
set nostartofline                       " Don't move the cursor to the first non-blank when jumping around
set scrolloff=3                         " Show at least 3 lines above and below the cursor
set backspace=2                         " Allow backspacing over autoindent, line breaks, start of insert

" Global indentation settings are Pythonic
set tabstop=4                           " <TAB> inserts 4 spaces
set softtabstop=4                       " <BS> deletes 4 spaces
set shiftwidth=4                        " Indents are 4 spaces
set expandtab                           " SPACES INSTEAD OF TABS: this makes the difference
set shiftround                          " Round indents to a multiple of `shiftwidth`

" Folding (za)
set foldmethod=indent                   " Fold on indents
set foldlevel=99                        " Don't fold by default

" Code completion (if any)
set completeopt=menuone,longest,preview " Autocomplete on typing
set pumheight=6                         " Keep a small completion window

" Remove trailing spaces when saving the following source code files
au FileType css,html,java,javascript,php,python,sh au BufWritePre <buffer> %s/\s\+$//e


" ====
" HTML
" ====
" Show matching < >
au FileType html setlocal matchpairs+=<:>


" ========================================================
" CSS, HTML, JS, PHP
" Stick to MediaWiki conventions:
" https://www.mediawiki.org/wiki/Manual:Coding_conventions
" ========================================================
" TABS INSTEAD OF SPACES
au FileType css,html,javascript,php setlocal noexpandtab

