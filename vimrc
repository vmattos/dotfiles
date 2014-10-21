syntax enable

let mapleader=","

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

set showmatch
set incsearch
set hlsearch
" Clears highlighted matches with ,<space>
nnoremap <leader><space> :nohlsearch<CR> 

set foldenable
set foldlevelstart=10
nnoremap <space> za

filetype indent on

" Does not jump 'fake' lines
nnoremap j gj
nnoremap k gk

" Uses ,. instead of esc 
inoremap <leader>. <esc>

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Sets backup directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Toggles between number and relativenumber
function! ToggleNumber()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set number
  endif
endfunc
