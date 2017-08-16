call plug#begin('~/.vim/plugged')

Plug 'hzchirs/vim-material'
Plug 'kudabux/vim-srcery-drk'
Plug 'ajmwagar/vim-deus'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go'
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

call plug#end()

set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark " Setting dark mode
let g:deus_termcolors=256
colorscheme vim-material
let g:vim_markdown_folding_disabled = 1
