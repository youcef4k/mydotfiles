set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug '~/.fzf'
Plug 'dbgx/lldb.nvim'
Plug 'junegunn/fzf.vim'
Plug 'racer-rust/vim-racer'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/taglist.vim'
Plug 'freitass/todo.txt-vim'
Plug 'dusans/vim-hardmode'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

syntax enable
colorscheme sublimemonokai 
set termguicolors

set nu
set mouse=a

set shiftwidth=2
set tabstop=2
set softtabstop=2
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

set relativenumber

set incsearch
set nohlsearch

set foldenable
set foldlevelstart=99
set foldmethod=indent
inoremap jk <ESC> 
inoremap kj <ESC> 
inoremap <C-space> <C-n>

"" Leader maps
let mapleader=" "
nnoremap <leader>s :w<CR>

nnoremap <leader>e :tabe ~/.config/nvim/init.vim<CR>G
nnoremap <leader>i :PlugInstall<CR>

nnoremap <leader>m :w<CR>:silent !pdflatex main.tex<CR><C-l>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


"j and k movemements
nnoremap j gj
nnoremap k gk

nnoremap <leader>1 gT
nnoremap <leader>2 gt

"ClipBoard settings
set clipboard=unnamed
nnoremap <leader>p :r !pbpaste<CR>
nnoremap <leader>y :.!pbcopy<CR>u

set scrolloff=10

let g:lightline = {
		\ 'colorscheme': 'wombat',
		\ }
set laststatus=2

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Tagbar Toggle
nnoremap <F8> :TagbarToggle<CR>

" NerdTree
nnoremap <F6> :NERDTreeTabsToggle<cr>

" Quit
nnoremap <leader>q :q<cr>

set splitbelow

" Teminal
:tnoremap jk <C-\><C-n>
:tnoremap kj <C-\><C-n>
:tnoremap <esc> <C-\><C-n>
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l


" Easy motion
map <Leader> <Plug>(easymotion-prefix)

" LLDB
map <leader><F2> :LLsession new<CR>
map <leader><F3> :LLsession load<CR>
nmap <leader><F4> <Plug>LLBreakSwitch  
map <leader><F5> :LLrefresh<CR>
vmap <leader><F6> <Plug>LLStdInSelected
map <leader><F7> :LLmode code<CR>
map <leader><F8> :LLmode debug<CR>
map <leader><F9> :LL process kill<CR> 
map <leader><F10> :LL process interrupt<CR> 
map <leader><F11> :LL process launch<CR> 
map <leader><F12> :LL continue<CR> 

" CTAGS GENERATOR
map <leader><leader>c :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Setting
set updatetime=250
set showmatch " When a bracket is inserted, briefly jump to the matching one
set matchtime=1 " ... during this time ms

set undofile
set undodir=/tmp

" Add semicolon to the end of the line
inoremap ;; <C-o>A;

set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ 'cpp' : ['ccls'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> <leader>h :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>f :call LanguageClient_textDocument_formatting()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


"" UltiSnips
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-w>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

nnoremap <silent> <c-t> :call fzf#vim#files('/', fzf#vim#with_preview('right')) <CR>
nnoremap <silent> <Leader>. :Files <C-r>=expand("%:h")<CR>/<CR>
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vspli'
      \ }
