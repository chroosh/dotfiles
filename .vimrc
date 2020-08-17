"chroosh 20t1 vim haha

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
" Plug 'ycm-core/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'rakr/vim-one'
Plug 'w0ng/vim-hybrid'
Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'
call plug#end()

filetype plugin indent on 
let mapleader=";"
set wildmenu
" set cursorline

"numberline
set number
" set relativenumber

"theme
syntax on 
" set termguicolors 
set t_Co=256
set fillchars+=vert:│
hi VertSplit ctermbg=white ctermfg=black

"mouse and keyboard
set mouse=a
set backspace=indent,eol,start
" if !has('nvim')
"     set ttymouse=term2
" endif
" set colorcolumn=100
" hi colorcolumn ctermbg=darkgrey
command Q q
command W w


set clipboard=unnamed

" buffers
set splitright
set splitbelow

" search
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <esc><esc> :silent! nohls<cr>

"tabs and indentation
set noexpandtab
set nosmarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set linebreak
set autoindent
	
" statusline
set showcmd
set noshowmode
set laststatus=2

hi statusline ctermfg=153
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1


" nerdtree
map <C-y> :NERDTreeToggle<CR>" Define mappings
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Load the MacVim color scheme.  This can be disabled by loading another color
" scheme with the :colorscheme command, or by adding the line
"   let macvim_skip_colorscheme=1
" to ~/.vimrc.

if has ("gui_running")
	colorscheme one
endif

let g:polyglot_disabled = ['markdown', 'python']

let g:ale_python_pylint_options = '--load-plugins pylint'
