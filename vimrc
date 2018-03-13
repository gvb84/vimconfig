set viminfo=
syntax on
colors ron
set hlsearch
execute pathogen#infect()
filetype plugin indent on

autocmd BufWritePost *.py call Flake8()
