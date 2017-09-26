execute pathogen#infect()

set nocompatible

colorscheme molokai

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
set laststatus=2
set showmatch
set incsearch
set hlsearch

" Clears highlighted matches with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" Find word under cursor and replace
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

set foldenable
set foldlevelstart=10
nnoremap <space> za

filetype indent on
filetype plugin indent on

map <F7> :w !xclip -selection c<CR><CR>

" Does not jump 'fake' lines
nnoremap j gj
nnoremap k gk

" Uses ,. instead of esc
inoremap <leader>. <esc>

" Removes trailing white space with F5
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Automatically opens NERDTree plugin
" autocmd vimenter * NERDTree         " Opens NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_id") | NERDTree | endif

" Opens NERDTree plugin with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Closes Vim if left pane is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Sets backup directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
set backspace=indent,eol,start


" Toggles between number and relativenumber
function! ToggleNumber()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set number
  endif
endfunc

" Compiles Coffeescript
 map <leader>c :CoffeeCompile<CR>

" Flow hightlight
let g:javascript_plugin_flow = 1

" Go-vim plugin
 let g:go_highlight_functions = 1
 let g:go_highlight_methods = 1
 let g:go_highlight_structs = 1
 let g:go_highlight_operators = 1
 let g:go_highlight_build_constraints = 1
 let g:go_auto_type_info = 1
 let g:go_highlight_trailing_whitespace_error = 1
 let g:go_fmt_command = "goimports"

" Emmet plugin
 let g:user_emmet_leader_key='<C-C>'

" YouCompleteMe plugin
 let g:ycm_add_preview_to_completeopt = 1
 let g:ycm_autoclose_preview_window_after_insertion = 1

" Airline plugin
 let g:airline_theme = 'badwolf'
 let g:airline_powerline_fonts = 1

" NERDTree & NERDTree tabs plugins
 let g:nerdtree_tabs_open_on_console_startup = 1
 let g:nerdtree_tabs_focus_on_files = 1

" Ultisnips
 let g:UltiSnipsExpandTrigger="<c-j>"
 let g:UltiSnipsJumpForwardTrigger="<c-n>"
 let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" Syntastic plugin
 "set statusline+=%#warningmsg#
 "set statusline+=%{SyntasticStatuslineFlag()}
 "set statusline+=%*
 "let g:syntastic_always_populate_loc_list = 1
 "let g:syntastic_auto_loc_list = 1
 "let g:syntastic_check_on_open = 0
 "let g:syntastic_check_on_wq = 0
 "let g:syntastic_javascript_checkers=['eslint']
 "let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
" let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Tagbar plugin
nmap <F8> :TagbarToggle<CR>

" Tabs shortcuts
nmap  <F9>          :tabclose<CR>
nmap H              :tabp<CR>
nmap L              :tabn<CR>

function! ClearRegs()
  let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
  for r in regs
    call setreg(r, [])
  endfor
endfunc

 "call plug#begin('~/.vim/plugged')
" 
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" 
" Plug 'tpope/vim-fugitive'
" 
" Plug 'scrooloose/syntastic'
" 
" Plug 'tpope/vim-surround'
" 
" Plug 'altercation/vim-colors-solarized'
" 
" Plug 'bling/vim-airline'
" 
" Plug 'majutsushi/tagbar'
" 
" Plug 'thaerkh/vim-workspace'
" 
" Plug 'scrooloose/nerdcommenter'
" 
" Plug 'airblade/vim-gitgutter'
" 
" Plug 'valloric/youcompleteme'
" 
" Plug 'vim-airline/vim-airline-themes'
" 
" Plug 'pangloss/vim-javascript'
" 
" Plug 'easymotion/vim-easymotion'
" 
" Plug 'godlygeek/tabular'
" 
" Plug 'ervandew/supertab'
" 
" Plug 'flazz/vim-colorschemes'
" 
" Plug 'terryma/vim-multiple-cursors'
" 
" Plug 'sjl/gundo.vim'
" 
" Plug 'plasticboy/vim-markdown'
" 
" Plug 'marcweber/vim-addon-mw-utils'
" 
" Plug 'christoomey/vim-tmux-navigator'
" 
" Plug 'w0rp/ale'
" 
"Plug 'scrooloose/nerdtree'
" 
 "Plug 'Xuyuanp/nerdtree-git-plugin'
" 
 "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" 
" Plug 'ryanoasis/vim-devicons'
