" Specify a directory for plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}


" Initialize plugin system
call plug#end()

" --Theming-- "
let g:airline_powerline_fonts = 1
colorscheme dracula


" --Nerdtree Settings-- "
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>


" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '/home/thunderpat/go/bin/gocode'

" --vim-go Settings-- "
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1


" vim config
syntax enable                           " Enables syntax highlighing
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set ruler              			" Show the cursor position all the time
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set clipboard=unnamedplus               " Copy paste between vim and everything else
