set number

call plug#begin('~/.local/share/nvim/plugged')

Plug 'rust-lang/rust.vim'

Plug 'itchyny/lightline.vim'

Plug 'https://github.com/joshdick/onedark.vim.git'

" Plug 'https://github.com/vim-syntastic/syntastic.git'

Plug 'https://github.com/pangloss/vim-javascript.git'

Plug 'sbdchd/neoformat'

Plug 'https://github.com/danilo-augusto/vim-afterglow.git'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dense-analysis/ale'

Plug 'https://github.com/tpope/vim-obsession.git'

call plug#end()

" Configuation to map the <tab> to Coc completion
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let g:syntastic_javascript_checkers=['eslint']

let g:afterglow_inherit_background=1
colorscheme afterglow 
syntax on

filetype plugin on
filetype indent on

