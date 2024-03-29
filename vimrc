nnoremap <silent> <C-l> :nohl<CR><C-l>
inoremap jj <esc>

syntax on

" reminders:
"   tabstop:          Width of \t
"   softtabstop:      Fine tunes the amount of white space to be added
"   shiftwidth        Determines the amount of whitespace to add in normal mode
"   expandtab:        Use spaces instead of tabs

set   autoindent
set   expandtab
set nohlsearch
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
    setl shiftwidth=4
endfun

fun PythonSetup()
    setl expandtab
    setl shiftwidth=4
endfun

fun MakefileSetup()
    setl noexpandtab
    setl   shiftwidth=8
    setl   softtabstop=8
    setl   tabstop=8
endfun

fun GoSetup()
    setl noexpandtab
endfun

autocmd FileType lpc call CSetup() " lpc in $VIMRUNTIME/filetypes.vim .. 
autocmd FileType python call PythonSetup()
autocmd FileType make call MakefileSetup()
autocmd FileType go call GoSetup()
