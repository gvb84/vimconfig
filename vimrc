set viminfo=
syntax on
colors ron
set hlsearch
execute pathogen#infect()
filetype plugin indent on
let g:netrw_dirhistmax=0

autocmd BufWritePost *.py call Flake8()
