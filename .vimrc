set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set statusline=   " Resets statusline settings to vim default
color ron         " Color theme
hi StatusLine ctermbg=18 ctermfg=15    " Status line background and foreground colors

set noswapfile    " Just hold files in memory, don't create swp file
set history=50    " How many last commands and serach patters to remember
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching (as you type)
set laststatus=2  " Always display the status line

set tabstop=4     " These three are needed for proper identation
set shiftwidth=4
set shiftround

set relativenumber        " Show line numbers
set number
set numberwidth=5

set wildignore+=*.so,*.swp,*.zip,*.meta,*.jar,*.a,*.dll,*.png,*.asset
set clipboard=unnamed
set diffopt+=iwhite

let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
if executable('ag')
	let g:ctrlp_user_command = 'ag %s -p ~/.agignore -l --nocolor -g ""'
endif 

map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
