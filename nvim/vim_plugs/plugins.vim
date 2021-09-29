call plug#begin('~/.vim/plugged')
"Look and Feel
Plug 'dikiaap/minimalist'
"Better Syntax Support
Plug 'sheerun/vim-polyglot'
"File Explorer
Plug 'scrooloose/NERDTree'
"Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
"COC TypeScript and Js
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Whic-Key
Plug 'liuchengxu/vim-which-key'
"Snippets
Plug 'honza/vim-snippets'
"Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Colorizer
Plug 'norcalli/nvim-colorizer.lua'
"Rainbow
Plug 'junegunn/rainbow_parentheses.vim'
"Startify
Plug 'mhinz/vim-startify'
"Git Experience
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
"Sneak
Plug 'justinmk/vim-sneak'
"QuickScope
Plug 'unblevable/quick-scope'
"Game Exercise
Plug 'morhetz/gruvbox'
"ThePrimeagen
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
"Update
Plug 'tweekmonster/gofmt.vim'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
"Web Development
Plug 'mattn/emmet-vim'
"Telescope Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Telescope Plugins
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}

"Buffer Navigation
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()



colorscheme gruvbox
set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:netrw_browser_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

