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

Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'

call plug#end()

" General Settings -----------------------------------------

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set rnu
set nowrap
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
colorscheme nord
set background=dark
