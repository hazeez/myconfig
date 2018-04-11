set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" B
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"

"Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim'
Plugin 'Command-T'
Plugin 'scrooloose/nerdcommenter'
Plugin 'itchyny/lightline.vim'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"

"custom settings
set lines=35 columns=150
set colorcolumn=80

set tabstop=4
set softtabstop=4
set expandtab
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set hidden
set history=100
set nowrap
set smartindent
set autoindent

syntax enable

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" move to beginning/end of line
nnoremap B ^
nnoremap E $
"
" " $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" change cursor shape
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"setting the leader to the space key
let mapleader=" "

"reload the vim configuration without having to restart the editor
map <leader>s :source ~/.vimrc<CR>

"dealing white spaces
autocmd BufWritePre * :%s/\s\+$//e

"cancel a search with an escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"re-open previously opened file
nnoremap <Leader><Leader> :e#<CR>

" ignore some files for command T
set wildignore+=*.log,*.sql,*.cache

"re-index files for command T as it does not happen automatically
noremap <Leader>r :CommandTFlush<CR>

"for lightline to display properly
set laststatus=2
set noshowmode
