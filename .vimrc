let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

syntax on
colorscheme monokai
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
inoremap {<cr> {<cr><cr>}<Esc>ki<tab>
set title
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nmap oo o<Esc>k
nmap OO O<Esc>j
set mouse=a

