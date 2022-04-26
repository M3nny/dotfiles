"                              ____                    
"             ,--,           ,'  , `.                  
"           ,--.'|        ,-+-,.' _ |  __  ,-.         
"      .---.|  |,      ,-+-. ;   , ||,' ,'/ /|         
"    /.  ./|`--'_     ,--.'|'   |  ||'  | |' | ,---.   
"  .-' . ' |,' ,'|   |   |  ,', |  |,|  |   ,'/     \  
" /___/ \: |'  | |   |   | /  | |--' '  :  / /    / '  
" .   \  ' .|  | :   |   : |  | ,    |  | ' .    ' /   
"  \   \   ''  : |__ |   : |  |/     ;  : | '   ; :__  
"   \   \   |  | '.'||   | |`-'      |  , ; '   | '.'| 
"    \   \ |;  :    ;|   ;/           ---'  |   :    : 
"     '---" |  ,   / '---'                   \   \  /  
"            ---`-'                           `----'   
" M3nny's vimrc

" Plugins --------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'M3nny/catppuccin-vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'

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
inoremap kj <Esc>

" Plugins Settings ------------------------------------------
 
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Appearance -----------------------------------------------

syntax on
colorscheme catppuccin
set background=dark
set termguicolors
