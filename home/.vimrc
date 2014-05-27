call pathogen#runtime_append_all_bundles()
filetype off
syntax on
filetype plugin indent on

call pathogen#infect()
filetype plugin on
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

set smartindent
set expandtab
set softtabstop=2
set shiftwidth=2

" Diplay line numbers
set number

" Start NERDtree and Tagbar if not file was specified
autocmd vimenter * if !argc() | NERDTree | TagbarOpen | endif

""""" Settings for NERDTree
" let NERDTreeIgnore=['\~$', '^\.git', '\.swp$', '\.DS_Store$']
let NERDTreeShowHidden=1
nmap <LocalLeader>nn :NERDTreeToggle<cr>

" Case insesitive search
set ic

" ---------------------------------------------------------------------------
"  """"" Settings for taglist.vim
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
nmap <LocalLeader>tt :Tlist<cr>

" JSON
au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source /Users/atubaltsev/.vim/ftplugin/json.vim

" ---------------------------------------------------------------------------
" omni
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete

" enable spell check
set spell

" tagbar
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

" useful maps
:vnoremap <F5> :cs find g <C-R>=expand("<cword>")<CR><CR>
:nnoremap <F5> ::cs find g <C-R>=expand("<cword>")<CR><CR>

" incremental search
:set incsearch
:set scrolloff=5

