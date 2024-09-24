nnoremap <silent> <C-l> :nohl<CR><C-l>
inoremap jj <esc>

syntax on
" reminders:
"   tabstop:          Width of \t
"   softtabstop:      Amount of whitespace a tab keypress will produce in 
"   shiftwidth        Determines the amount of whitespace to add in normal mode
"   expandtab:        Use spaces instead of tabs

set   autoindent
set   expandtab
set   nohlsearch
set   ignorecase
set   incsearch
set   laststatus =2
set   number
set   relativenumber
set   ruler
set   shiftwidth  =2
set   showcmd
set   smartcase
set   softtabstop =4
set   splitbelow
set   splitright
set   tabstop     =4
set   undodir=$HOME/.vimundo
set   undofile

fun CSetup()
    setl expandtab
    setl shiftwidth     =4
    setl softtabstop    =4
    setl tabstop        =4
endfun

fun PythonSetup()
    setl expandtab
    setl shiftwidth     =4
    setl softtabstop    =4
    setl tabstop        =4
endfun

fun MakefileSetup()
    setl noexpandtab
    setl shiftwidth     =8
    setl softtabstop    =8
    setl tabstop        =8
endfun

fun RustSetup()
    setl expandtab
    setl shiftwidth     =4
    setl softtabstop    =4
    setl tabstop        =4
endfun

fun YamlSetup()
    setl expandtab
    setl shiftwidth     =2
    setl softtabstop    =2
    setl tabstop        =2
endfun

" :setfiletype <C>-d to autocomplete available FileTypes from all directories
" that vim uses for syntax highlighting definitions

autocmd FileType c call CSetup()
autocmd FileType cpp call CSetup()
autocmd FileType python call PythonSetup()
autocmd FileType make call MakefileSetup()
autocmd FileType rust call RustSetup()
autocmd FileType yaml call YamlSetup()

au BufNewFile,BufRead,BufReadPost *.mail set syntax=HTML
