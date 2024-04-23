"#---------------------------------------------------------#
"#                                                         #
"#                 Instalação dos plugins                  #
"#                                                         #
"#---------------------------------------------------------#

call plug#begin()

"#----------------------- Wilder --------------------------#

if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"#-------------- Awesome Vim Colorschemes -----------------#

Plug 'rafi/awesome-vim-colorschemes'

"#----------------------- CTRL P --------------------------#

Plug 'kien/ctrlp.vim'

"#--------------------- IndentLine ------------------------#

Plug 'https://github.com/Yggdroot/indentLine'

"#------------------- Nerd Commenter ----------------------#

Plug 'https://github.com/preservim/nerdcommenter'

"#---------------------- NerdTree -------------------------#

Plug 'preservim/nerdtree'

"#--------------------- Vim Airline -----------------------#

Plug 'vim-airline/vim-airline'

"#----------------- Vim Ariline Themes --------------------#

Plug 'vim-airline/vim-airline-themes'

"#-------------------- Vim DevIcons -----------------------#

Plug 'ryanoasis/vim-devicons'

"#---------------------- Startify -------------------------#

Plug 'mhinz/vim-startify'

"#------------------- Simple Compile ----------------------#

Plug 'vim-scripts/SingleCompile'

"#---------------------- Minimap --------------------------#

Plug 'wfxr/minimap.vim'

"#---------------------- VimTeX ---------------------------#
Plug 'lervag/vimtex'

call plug#end()

"#---------------------------------------------------------#
"#                                                         #
"#             Configurações gerais básicas                #
"#                                                         #
"#---------------------------------------------------------#

syntax on

filetype plugin indent on

set number

set autoindent

set smartindent

set expandtab

set tabstop=2

set hlsearch

set ignorecase

set incsearch

set smartcase

set linebreak

set wrap

set laststatus=2

set ruler

set wildmenu

set wildmode=full,full

set cursorline

set mouse=a

set title

set history=1000

set clipboard=unnamedplus

set foldmethod=syntax

set foldlevel=99

set encoding=UTF-8

set guifont=BlexMono\ Nerd\ Font\ Mono\ 12

colorscheme sonokai

"#--------------------- 256 colors ------------------------#

if &term == "screen"
  set t_Co=256
endif

"#---------------------------------------------------------#
"#                                                         #
"#                      Key mapping                        #
"#                                                         #
"#---------------------------------------------------------#

map <C-L> :set cursorcolumn!<CR>

map <C-W> :qa<CR>

map <C-N> :NERDTreeToggle<CR>

map <C-Left> :wincmd h<CR>

map <C-Right> :wincmd l<CR>

map <C-S> :w<CR>

map <C-H> :Startify<CR>

map cc <Plug>NERDCommenterInvert

nnoremap <M-Right> :bn<cr>

nnoremap <M-Left> :bp<cr>

nnoremap <c-x> :bp\|bd! #<cr>

nnoremap <space> za

map <F5> :w! \| !compiler "<c-r>%"<CR>

"#---------------------------------------------------------#
"#                                                         #
"#                 Configuração de Pluguins                #
"#                                                         #
"#---------------------------------------------------------#

"#------------------------ NERDTree -----------------------#

autocmd VimEnter * NERDTree | wincmd p

"#-------------------- Web Dev Icons ----------------------#

let g:webdevicons_enable = 1

"#-------------------- Vim Air Lines ----------------------#

let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1

let g:airline_statusline_ontop=0

let g:airline_theme='base16_twilight'

let g:airline#extensions#tabline#formatter = 'default'

"#------------------------ Wilder -------------------------#

call wilder#setup({'modes': [':', '/', '?']})

call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'min_width': '100%',
      \ 'min_height': '50%',
      \ 'reverse': 0,
      \ })))

"#---------------------- Vim CTRL P -----------------------#

let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:ctrlp_show_hidden = 1

let g:NERDSpaceDelims = 1

let g:NERDDefaultAlign = 'left'

"#---------------------- Indent Line ----------------------#

let g:indentLine_enabled = 1

"#---------------------- Minimap --------------------------#

let g:minimap_width = 10

let g:minimap_auto_start = 1

let g:minimap_auto_start_win_enter = 1

"#---------------------- VimTeX ---------------------------#

" let g:vimtex_view_method = 'zathura'

" let g:vimtex_compiler_method = 'latexrun'

" let maplocalleader = ","
