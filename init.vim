set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
" Plug 'kien/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'critiqjo/lldb.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
" Plug 'DoxygenToolkit.vim'
Plug 'easymotion/vim-easymotion'
" Plug 'mhartington/oceanic-next'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'rhysd/vim-clang-format'
Plug 'airblade/vim-gitgutter'
Plug 'justinmk/vim-sneak'
Plug '~/.fzf'
"
"
"
" Plug 'mhinz/vim-startify'
" Plug 'thibthibaut/vim-arduino-ino', { 'branch': 'feature_choose_target' }
" Plug 'rhysd/vim-clang-format'
" Plug 'clang-complete'
" Plug 'zchee/deoplete-clang'
 " Plug 'taketwo/vim-ros'
" Plug 'iCyMind/NeoSolarized'
" Plug 'altercation/vim-colors-solarized'
" Plug 'vim-syntastic/syntastic'
" Plug 'SirVer/ultisnips'
" Plug 'jplaut/vim-arduino-ino/'
" Plug 'kana/vim-operator-user'
" Plug 'OmniCppComplete'
" Plug 'tpope/vim-fugitive'
" Plug 'sbdchd/neoformat'
" Plug 'valloric/MatchTagAlways'

call plug#end()

"set t_Co=256
"set termguicolors
" colorscheme desertEx-v2
" colorscheme NeoSolarized
set background=dark
let g:neosolarized_contrast = "high"
syntax enable
" colorscheme dracula
colorscheme sublimemonokai 
set termguicolors
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let mapleader=" "

xmap ga <Plug>(EasyAlign)



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

"Todo: FIX"
set incsearch
set nohlsearch

set foldenable
set foldlevelstart=99
set foldmethod=indent
inoremap jk <ESC> 
inoremap kj <ESC> 
inoremap <C-space> <C-n>

nnoremap <leader>s :w<CR>

nnoremap <leader>e :tabe ~/.config/nvim/init.vim<CR>G
nnoremap <leader>i :PlugInstall<CR>

nnoremap <leader>m :w<CR>:silent !pdflatex main.tex<CR><C-l>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

"j and k movemements
nnoremap j gj
nnoremap k gk

nnoremap <leader>1 gT
nnoremap <leader>2 gt

"ClipBoard settings
set clipboard=unnamed
nnoremap <leader>p :r !pbpaste<CR>
nnoremap <leader>y :.!pbcopy<CR>u

" Accents
" inoremap ,e é
" inoremap ,3 è
" inoremap ,a à
" inoremap ,c ç

set scrolloff=10


let g:lightline = {
		\ 'colorscheme': 'wombat',
		\ }
set laststatus=2

"setlocal spell spelllang=en
autocmd BufEnter *.tex set spell
nnoremap <leader>c z=
nnoremap <leader>z z=1<CR><CR>
inoremap ,, <esc>mz[sz=1<CR>`za


" Use deoplete.
"let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"



" Tagbar Toggle
nnoremap <F8> :TagbarToggle<CR>

" CtrlP + CTAGS
nnoremap <silent> <F7> :CtrlPTag<cr>

" NerdTree
nnoremap <F6> :NERDTreeTabsToggle<cr>

" Quit
nnoremap <leader>q :q<cr>

set splitbelow

" Teminal
:nnoremap <F5> :sp term://zsh<cr>i
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

" Doxygen 
nnoremap <leader>d :Dox<cr>

" Easy motion
map <Leader> <Plug>(easymotion-prefix)

" For ros launch files
au BufReadPost *.launch set syntax=xml

" Tab jumps
nnoremap <leader>h gT
nnoremap <leader>l gt

" NEOFORMAT SETTINGS
" let g:neoformat_read_from_buffer = 0
" let g:neoformat_verbose = 1
" let g:neoformat_cpp_clangformat = {
"             \ 'exe': 'clang-format',
"             \ }

" LLDB
map <F9> <Plug>LLBreakSwitch  
map <F3> :LL s<CR>
map <F4> :LL n<CR>
map <F2> :LL continue<CR> 
map <F10> :LLmode code<CR>
map <F12> :LLmode debug<CR>

" CTAGS GENERATOR
map <leader><leader>c :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Setting
set updatetime=250
set showmatch " When a bracket is inserted, briefly jump to the matching one
set matchtime=1 " ... during this time ms

" open nerdtree at startup
nnoremap <c-f> :silent !clang-format -i -style=file %<cr>:edit!<cr>

nnoremap <C-b> :make -C ../build<cr>

" Redo prototypes in cpp
nnoremap <leader>cc ^wd2f:$xdT)A;<esc>

" let g:deoplete#sources#clang#libclang_path = '/usr/lib/x86_64-linux-gnu/libclang.so'
" let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-3.4/lib/clang/'


" Set xml for ROS launchfiles
autocmd BufNewFile,BufRead *.launch set filetype=xml
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

nnoremap <leader>9 :bNext<cr>
nnoremap <leader>0 :bprevious<cr>
nnoremap <leader><tab> :b#<cr>



nnoremap <leader>f mzggVG=`z

"set cursorline
"highlight clear CursorLine
"highlight CursorLineNR ctermbg=Brown
"highlight CursorLine ctermbg=DarkGrey

