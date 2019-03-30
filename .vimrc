filetype plugin indent on
syntax on

set smartindent 
set nomodeline
set nocompatible
set noshowmode
set tags=tags
set number
set rnu 
set ruler
set rulerformat=%40(%=%1*%m%r%w\ %t%)
set tags=./tags,tags;$HOME

set numberwidth=2

" Pathogen and vundle
execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'universal-ctags/ctags'
Plugin 'xolox/vim-misc'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
        let b:easytags_auto_highlight = 0
        let g:easytags_async = 1
        let g:easytags_cmd = '/usr/local/bin/ctags'
call vundle#end() 

" Tag configs
let g:autotagTagsFile=".tags"
nmap <F8> :TagbarToggle<CR>
noremap <c-]> 2<c-]>

" Lightline settings 
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

let g:ycm_use_clangd = 0

" Other commands
map <C-e> :NERDTreeToggle<CR>

nnoremap H gT
nnoremap L gt

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Mutiple-cursors
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
