set number

call plug#begin('~/.local/share/nvim/plugged')

Plug 'rust-lang/rust.vim'

Plug 'itchyny/lightline.vim'

Plug 'https://github.com/joshdick/onedark.vim.git'

Plug 'https://github.com/vim-syntastic/syntastic.git'

Plug 'https://github.com/pangloss/vim-javascript.git'

Plug 'sbdchd/neoformat'

call plug#end()


let g:syntastic_javascript_checkers=['eslint']


colorscheme onedark
syntax on

filetype plugin on
filetype indent on

