call plug#begin()
  Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
  Plug 'elixir-editors/vim-elixir'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' 
  Plug 'dracula/vim'
call plug#end()

colorscheme dracula

set cursorline

highlight CursorLine cterm=NONE ctermbg=black 

nnoremap <C-h> :set cursorline! <CR>

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

set noshowmode 
set relativenumber number
set mouse=a
set encoding=utf-8

set expandtab smarttab tabstop=2 shiftwidth=2

syntax enable

nnoremap <C-p> :FZF <cr>
map <F9> :bprevious<CR>
map <F10> :bnext<CR>
map <C-q> :bd<CR>
nnoremap <C-s> :w <cr>
nnoremap <C-b> :call NERDTreeToggleAndRefresh()<CR>

function NERDTreeToggleAndRefresh()
  :NERDTreeToggle
  if g:NERDTree.IsOpen()
    :NERDTreeRefreshRoot
  endif
endfunction
