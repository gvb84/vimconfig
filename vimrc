set viminfo=
syntax on
colors ron
set hlsearch
execute pathogen#infect()
filetype plugin indent on
let g:netrw_dirhistmax=0

autocmd BufWritePost *.py call Flake8()

" hide nerdtree when it's the last open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" open nerdtree when opening directory
let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" open nerd tree with C-N
map <C-n> :NERDTreeToggle<CR>

