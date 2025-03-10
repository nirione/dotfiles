" Basic definitions:
" make sure in home directory:
".vim with folders autoload backup colors and plugged inside 
"$HOME/.vim/(autoload;backup;colors;plugged)
"
set nocompatible 
filetype on
filetype plugin on
filetype indent on
syntax on

set number relativenumber

let mapleader =" "

set splitbelow
set splitright

set wildmode=longest,list,full
set wildignore=*.png,*.jpg,*.pdf,*.mp4,*.mp3

set incsearch
set hlsearch

" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
call plug#end()

" FUNCTIONS
fu! ToggleCCline ()
	if &cursorcolumn
		set nocursorcolumn
	else
		set cursorcolumn
	endif
endfunction

" MAPPINGS
map <leader>f :Goyo \| set linebreak<CR>
map <leader>l :call ToggleCCline()<CR>
map <leader>s :!clear && shellcheck %<CR>

" VIMSCRIPT
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

" STATUS LINE
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R\
set statusline+=%=
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

"

