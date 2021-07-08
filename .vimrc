" ==========================================================
" Basic Settings
" ==========================================================
syntax on                             " syntax highlighing
filetype on                           " try to detect filetypes
filetype plugin indent on             " enable loading indent file for filetype
set number                            " display line numbers
set numberwidth=1                     " using only 1 column (and 1 space) while possible
set background=dark                   " dark background color scheme
set title                             " show title in console title bar
set wildmenu                          " menu completion in command mode on <TAB>
set wildmode=longest,list,full        " BASH-like autocompletion + cycle through completion options

""" Window panes
set splitbelow						  " more intuitive horizontal window split
set splitright						  " more intuitive vertical window split
" <SHIFT> + [jkhl] to move around panes
nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-H> <C-W><C-H>
nnoremap <S-L> <C-W><C-L>

""" More readable colours
highlight String ctermfg=Green          " green strings
highlight Constant ctermfg=Yellow   " orange values
highlight Comment ctermfg=Blue          " blue comments

" don't bell or blink
set noerrorbells
set vb t_vb=

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

""" Insert completion
" don't select first item, follow typing in autocomplete
set completeopt=menuone,longest,preview
set pumheight=6             " Keep a small completion window

""" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
"set nowrap                  " don't wrap text
set linebreak               " don't wrap text in the middle of a word
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set tabstop=4               " <tab> inserts 4 spaces
set shiftwidth=4            " an indent level is 4 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes 4 spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default
set pastetoggle=<F4>        " toggle pasting text with or without autoindentation

""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

""" Uncomment to use Pathogen for plugins (e.g., jedi for Python autocompletion)
"execute pathogen#infect()

" ===========================================================
" FileType specific changes
" ===========================================================

" Remove trailing spaces when saving some source code files
autocmd FileType java,php,python,sh autocmd BufWritePre <buffer> %s/\s\+$//e

" Mako/HTML
autocmd BufNewFile,BufRead *.mako,*.mak,*.jinja2 setlocal ft=html
autocmd FileType html,xhtml,xml,css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" Python
"au BufRead *.py compiler nose
au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\]%\\@=%m
