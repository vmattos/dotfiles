call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-sleuth'
Plug 'valloric/youcompleteme'
Plug 'ternjs/tern_for_vim'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-repeat'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'szw/vim-maximizer'
call plug#end()

set nocompatible
set encoding=utf8

set t_Co=256

set backspace=indent,eol,start

syntax enable

filetype plugin on

let mapleader=","

colorscheme gruvbox

set tabstop=2
set softtabstop=2
set so=7
set expandtab
set autoindent
set smartindent
set shiftwidth=2
set wrap
set ruler
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set laststatus=2
set showmatch
set incsearch
set hlsearch

set guifont=Sauce\ Code\ Pro\ Medium\ Nerd\ Font\ Complete\ Mono:h14

" Sets backup directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
set backspace=indent,eol,start

" Clears highlighted matches with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" Find word under cursor and replace
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

set foldenable
set foldlevelstart=10
nnoremap <space> za

map <F7> :w !xclip -selection c<CR><CR>

nnoremap <leader>u :GundoToggle<CR>

map H :tabp<CR>
map L :tabn<CR>

" Does not jump 'fake' lines
nnoremap j gj
nnoremap k gk

" Uses ,. instead of esc
inoremap <leader>. <esc>

" Removes trailing white space with F5
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Automatically opens NERDTree plugin
" autocmd vimenter * NERDTree         " Opens NERDTree automatically
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_id") | NERDTree | endif

" Opens NERDTree plugin with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFind<CR>

" Closes Vim if left pane is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeLimitedSyntax = 1

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'deus'

" Uses ctrl-p to invoke FZF
nnoremap <C-p> :FZF<CR>

" Leader a opens ag
nnoremap <Leader>a :Ag 

" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" Easymotion
hi link EasyMotionTarget EasyMotionTargetDefault 

" Maximizer
nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
