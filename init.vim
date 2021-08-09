call plug#begin()
  Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
  Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' 
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'vim-airline/vim-airline-themes'
  Plug 'elixir-editors/vim-elixir'
  Plug 'preservim/nerdcommenter'
  Plug 'vim-airline/vim-airline'
  Plug 'junegunn/fzf.vim'
  Plug 'dracula/vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'othree/html5.vim'
call plug#end()

colorscheme dracula
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1

highlight CursorLine cterm=NONE ctermbg=black 
filetype plugin on
syntax enable
set cursorline
set noshowmode 
set relativenumber number
set mouse=a
set encoding=utf-8
set expandtab smarttab tabstop=2 shiftwidth=2

map <F10> :bnext<CR>
map <F9> :bprevious<CR>
map <C-q> :bd<CR>
nnoremap <C-p> :FZF <cr>
nnoremap <C-h> :set cursorline! <CR>
nnoremap <C-s> :w <cr>
nnoremap <C-b> :call NERDTreeToggleAndRefresh()<CR>
nnoremap <C-/>:call NERDComment('x', 'toggle')<CR>
nnoremap <M-up> :move -2<CR>
nnoremap <M-down> :move +1<CR>

function NERDTreeToggleAndRefresh()
  :NERDTreeToggle
  if g:NERDTree.IsOpen()
    :NERDTreeRefreshRoot
  endif
endfunction
