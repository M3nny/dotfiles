"  __   __ __   __    __   ______   ______    
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
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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

" Plugins Settings ------------------------------------------
 
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Remap f/F to sneak and enable label-mode
map f <Plug>Sneak_s
map F <Plug>Sneak_S
let g:sneak#label = 1

" Remap f/F to sneak and enable label-mode
map f <Plug>Sneak_s
map F <Plug>Sneak_S
let g:sneak#label = 1

" Appearance -----------------------------------------------

syntax on
colorscheme catppuccin_mocha
set termguicolors
