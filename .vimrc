

" ==================================================================================
" VIM NOTES
" ==================================================================================

" Searching for files (example, opens in vs):
" :vs **/*<Part of file name><Tab>

" Easy Align (Plugin)
" gaip<Spcae / = / 2Space>

" Find in file
" grep

" Search and Replace
" See my book...

" ==================================================================================


" ==================================================================================
" VIM PLUGINS : VIM-PLUG
" ==================================================================================

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

" EasyMotion
Plug 'https://github.com/easymotion/vim-easymotion'

" Typescript
Plug 'https://github.com/leafgarland/typescript-vim'

" VUE
Plug 'https://github.com/posva/vim-vue'

" Omnisharp - C#
Plug 'https://github.com/OmniSharp/omnisharp-vim'

" NerdTree
Plug 'https://github.com/scrooloose/nerdtree'

" Airline
Plug 'https://github.com/vim-airline/vim-airline'

" YouCompleteMe
" Remember to build (with clangd, not libclang): 
" cd ~/.vim/Plugged/YouCompleteMe
" python3 install.py --clangd-completer
Plug 'https://github.com/ycm-core/YouCompleteMe'

" Surround
Plug 'https://github.com/tpope/vim-surround'

" Theme; Dim
Plug 'https://github.com/jeffkreeftmeijer/vim-dim'

" Theme; NightOwl
Plug 'https://github.com/haishanh/night-owl.vim'

" Troces (Highlight substitution)
Plug 'https://github.com/markonm/traces.vim'

" Easy-Align
Plug 'https://github.com/junegunn/vim-easy-align'


""" THEME-BASED PULGINS """

" Them Plugin
Plug 'https://github.com/StarryLeo/starry-vim-colorschemes'

" Dracula Theme
Plug 'https://github.com/dracula/vim'

" Jellybean Theme
Plug 'https://github.com/nanotech/jellybeans.vim'


call plug#end()

" ==================================================================================


" ==================================================================================
" VIM SETTINGS
" ==================================================================================

"""" BASIC BEHAVIOR
set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
"set visualbell          " blink cursor on error, instead of beeping

set backspace=indent,eol,start " Allows backspace to work as in most programs
" set backspace=2 " Almost the same as abov, use if line above doesen't work as intendet


" Highlight Lines when in insert-mode
autocmd InsertEnter,InsertLeave * set cul!
hi CursorLine cterm=NONE ctermbg=black



"""" KEY BINDINGS

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk



""" PLUGIN : EASY-ALIGN
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



""" PLUGIN : AIRLINE




"""" VIM APPERANCE

" Makes night-owl work 'better' (a bit too blue, better to set bg in terminal)
"if (has("termguicolors"))
" set termguicolors
"endif

" put colorscheme files in ~/.vim/colors/
" colorscheme elflord       " good when using terminal (standard)
" colorscheme dim           " Uses terminal coulor
" colorscheme night-owl     " good standalone theme

"" Dracula theme with clear BC
" let g:dracula_colorterm = 0
" colorscheme dracula " good standalone theme

"" JellyBeans Colorscheme
colorscheme jellybeans

" Change Jellybean BG coulor
let g:jellybeans_overrides = {
\    'background': { 'guibg': '000000' },
\}

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on


"""" TAB SETTINGS

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')

"""" SEARCH SETTINGS

set incsearch           " search as characters are entered
set hlsearch            " highlight matches



"""" Miscellaneous settings that might be worth enabling

"set cursorline         " highlight current line
 set background=dark    " configure Vim to use brighter colors
"set autoread           " autoreload the file in Vim if it has been changed outside of Vim

" ==================================================================================
