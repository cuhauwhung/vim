filetype plugin indent on
filetype on 
syntax on

set smartindent 
set nomodeline
set nocompatible
set noshowmode
set number
set rnu 
set ruler
set rulerformat=%40(%=%1*%m%r%w\ %t%)
set laststatus=2
set numberwidth=2
set nobackup
set noswapfile 

" Far.vim settings 
"set lazyredraw
" set regexpengine=1

" Pathogen and vundle
execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'universal-ctags/ctags'
Plugin 'xolox/vim-misc'
Plugin 'brooth/far.vim'
Plugin 'majutsushi/tagbar'
Plugin 'itchyny/vim-gitbranch'
Plugin 'itchyny/lightline.vim'
Plugin 'kevinw/pyflakes-vim' 

call vundle#end() 

" Tag configs
nmap <F8> :TagbarToggle<CR>
noremap <C-]> g<C-]>

let g:gutentags_ctags_exclude = ["*.min.js", "*.min.css", "build", "vendor", ".git", "node_modules", "*.vim/bundle/*"]
let g:gutentags_project_root = ['Makefile', 'main.py']
let g:gutentags_generate_on_missing =1
let g:gutentags_generate_on_write =1
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" Lightline settings 
let g:lightline = {
      \	'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'gutentags', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'gutentags': 'gutentags#statusline'}
      \ }

" Interpreter and clang
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


