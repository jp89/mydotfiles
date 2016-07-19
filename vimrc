call pathogen#infect() " run pathogen
autocmd! bufwritepost .vimrc source % " reload .vimrc

" better pasting with F2
set pastetoggle=<F2> 
set clipboard=unnamed

" enable mouse and backspace
set bs=2
set mouse=a

" set leader to ,
let mapleader = ","

" cancel underline after vim has searched a phrase
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" moving around tabs with ctrl + arrow keys
map <c-j> <c-w>ji
map <c-k> <c-w>ki
map <c-l> <c-w>li
map <c-h> <c-w>hi

" , + n/m  mapped to previous/next tab
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" moving code blocks with < / >
vnoremap < <gv
vnoremap > >gv

" highlighting whitespaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" enable file type recognition and syntax highlighting
filetype off
filetype plugin indent on
syntax on

" show line number
set number

" disable text wrapping
set tw=79
set nowrap
set fo-=t

" display column after 80 chars
set colorcolumn=80
highlight ColorColumn ctermbg=233

" set history level
set history=700
set undolevels=700

" tabs settings - no tabs, only 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" smartcase search and highliting
set hlsearch
set incsearch
set ignorecase
set smartcase

" disable swap and buckup - uslese because of git usage
set nobackup
set nowritebackup
set noswapfile

set guifont=Monaco
set laststatus=2
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set t_Co=256

" set solarized color scheme
set t_Co=16
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

" ctrl.p

let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*build/*
set wildignore+=*dist/*
set wildignore+=*.egg-info/*
set wildignore+=*/coverage/*

" python mode
" usage
" ctrl+space - autocomplete
" ,g go to definition
" K - doc
" , + r run code
" [M, ]M - jump to next/prev method
" aC - mark whole class
" iC - mark inside of class
" aM, iM - for methods
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_virtualenv = 1

set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

" nerdtree
" usage , + t 
" o - open file
" go - open file, but stay in nerd tree
" t - open in new tab
" T - open and stay

nmap <leader>t :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ack.vim     
" usage: ,+a
nmap <leader>a <Esc>:Ack!

" nerdcommenter - ,cc
