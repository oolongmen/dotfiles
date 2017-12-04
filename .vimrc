call plug#begin()

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'itchyny/lightline.vim'

" nerdtree
Plug 'scrooloose/nerdtree'

" YCM
Plug 'Valloric/YouCompleteMe'

" color table
Plug 'guns/xterm-color-table.vim'

"ctrlp
Plug 'kien/ctrlp.vim'

"multiline comment
Plug 'tpope/vim-commentary'

"multi cursor
Plug 'terryma/vim-multiple-cursors'

"colorscheme
"Plug 'tomasr/molokai'
"Plug 'morhetz/gruvbox'

"go
"Plug 'fatih/vim-go'

"taglist
Plug 'vim-scripts/taglist.vim'

"cpp-enhanced-highlight
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

"colorscheme
syntax on
set t_Co=256
colorscheme oolong

set mouse=a
map <ScrollWheelUp> 3<C-Y>
map <S-ScrollWheelUp> <C-U>
map <ScrollWheelDown> 3<C-E>
map <S-ScrollWheelDown> <C-D>

set encoding=utf8
"set showmode                    " always show what mode we're currently editing in
"set nowrap                      " don't wrap lines
set wrap                        " wrap lines
set linebreak
set nolist                      " list disables linebreak
set textwidth=0
set wrapmargin=0
set tabstop=4                   " a tab is four spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set shiftwidth=4
set expandtab
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files,
                                "    who did ever restore from swap files
                                "    anyway?
set cursorline                  " underline the current line, for quick orientation
set splitright

"set list
set lcs=trail:·,tab:»·,eol:$
"set listchars=eol:$,tab:t.,trail:~,extends:>,precedes:<
" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>

"pastetoggle
set pastetoggle=<F6>

"display directory tree
nnoremap <silent> <F5> :NERDTreeToggle<CR>

"fold
set foldmethod=syntax
set foldcolumn=0
set foldlevelstart=20

function! FoldColumnToggle()
    if &foldcolumn
        setlocal foldcolumn=0
    else
        setlocal foldcolumn=4
    endif
endfunction

nnoremap <silent> <F4> :call FoldColumnToggle()<cr>

"YCM
let g:ycm_show_dianostics_ui = 1
let g:ycm_error_symbol = 'E'
let g:ycm_warning_symbol = 'W'
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_goto_buffer_command = 'vertical-split'
let g:ycm_server_python_interpreter = 'python'

nnoremap <F1> :YcmCompleter GoToDeclaration<CR>
nnoremap <F2> :YcmCompleter GoToInclude<CR>
"turn off YCM
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
"turn on YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>

"ctrlp
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'results:100'

" status line
set laststatus=2
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
" disable cursor shape
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0

"vim-commentary
autocmd FileType h setlocal commentstring=\/\/%s
autocmd FileType cpp setlocal commentstring=\/\/%s

"tags
set tags=./tags;
nnoremap <F12> :TlistToggle<CR>
