"  __   __ __   __    __    ____    ______    
" /\ \ / //\ \ /\ "-./  \ /\  == \ /\  ___\   
" \ \ \'/ \ \ \\ \ \-./\ \\ \  __< \ \ \____  
"  \ \__|  \ \_\\ \_\ \ \_\\ \_\ \_\\ \_____\ 
"   \/_/    \/_/ \/_/  \/_/ \/_/ /_/ \/_____/ 

" M3nny's vimrc

" Plugins --------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'

call plug#end()

" General Settings -----------------------------------------

let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nu rnu
set smartcase
set incsearch
set nowrap
inoremap kj <Esc>
nnoremap <C-p> :Files %:p:h<CR> 
filetype plugin indent on

" Plugins Settings ------------------------------------------
 
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Remap f/F to sneak and enable label-mode
map f <Plug>Sneak_s
map F <Plug>Sneak_S
let g:sneak#label = 1

" Remap f/F to sneak and enable label-mode
map f <Plug>Sneak_s
map F <Plug>Sneak_S
let g:sneak#label = 1

" Close html tags in these file extensions
let g:closetag_filenames = '*.html, *.xml, *.ts, *.tsx'

" Startify config 
let g:ascii = [
    \ '        o',
    \ '         o   /| ､',
    \ '          o  (°､ ｡ 7',
    \ '             |､  ~ヽ',
    \ '             じしf_,)/',
    \ ]
" let g:startify_custom_header = g:ascii + startify#fortune#boxed()
let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Recent files']  },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']     },
    \ ]

let g:startify_bookmarks = [
  \ { 'v': '~/.vimrc' },
  \ ]

" Appearance -----------------------------------------------

syntax on
set noshowmode
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
colorscheme catppuccin_mocha
set termguicolors
