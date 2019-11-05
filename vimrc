"
"=== Auto load for the first time
"
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif




let mapleader=" "
"colorscheme peachpuff
"color delek 
"set autoindent
"set cindent
"???"filetype indent on
"let g:instant_markdown_autostart = 0
"Plugin 'suan/vim-instant-Markdown'
set relativenumber nu
"""""""""""""""""""""""""""""""""""""'
"Keyboard map
nnoremap : ;
nnoremap ; :
"c/C short for ctrl, s/S short for Shift, CR/cr  short for Enter
nnoremap <C-h> 0
nnoremap <C-l> $
nnoremap J 5j
nnoremap K 5k
nnoremap S :w<CR>
nnoremap Q :q<CR>
nnoremap R :source $MYVIMRC<CR>
nnoremap <LEADER>rc :e ~/.vim/vimrc<CR>
"no opperation
"map s <nop>
nnoremap sl :set splitright<CR>:vsplit<CR>
nnoremap sh :set nosplitright<CR>:vsplit<CR>
nnoremap sj :set splitbelow<CR>:split<CR>
nnoremap sk :set nosplitright<CR>:split<CR>

"edit a new file
":e a.py 

"exchange split window
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>l <C-w>l
"resize the split window
nnoremap <up> :res +5<CR>
nnoremap <down> :res -5<CR>
nnoremap <left> :vertical resize -5<CR>
nnoremap <right> :vertical resize +5<CR>
"new tab
nnoremap tn :tabe<CR>
"exchange in tab
nnoremap th :-tabnext<CR>
nnoremap tl :tabnext<CR>
"vim a b c change windows
nnoremap wh :bp<CR>
nnoremap wl :bn<CR>

"change the vertical split to horizontal, vise versa
nnoremap sv <C-w>t<C-w>H
nnoremap sh <C-w>t<C-w>K

"highlight
"syntax off
"default on
set cursorline
"change lines automatially to make all the content can show in the window.
set wrap
"default on??

"show what you type at the bottom left
set showcmd

"in normal mode using tab can help you show the connecting words.
set wildmenu

"high light search
set hlsearch
"exec the following cmd, default on seems
exec "nohlsearch"
"high light when you typing word
set incsearch
"at 1 line leader=" " no highlight
noremap <LEADER><CR> :nohlsearch<CR>

"ignore the case
set ignorecase
"if your searching contents the lower and higher case, care the case
set smartcase

"avoid the uncompatibel between vim and vi
set nocompatible
"most plugin need the following 4 lines, let vim know the filetype
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"you can use mouse in vim
"set mouse=a
set encoding=utf-8
"some terminal cannot show the color not correctly
"????????????????
"let &t ut=''
"???????????????????????
""expandtab
"set expandtab
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2

"show the blank at the end of the line??
set list 
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
"indentation(缩进) behavior
set tw=0
set indentexpr=
"backspace can del the <CR>
set backspace=indent,eol,start
"make the code can be folded
"set foldmethod=indent
"zc      折叠
"zC     对所在范围内所有嵌套的折叠点进行折叠
"zo      展开折叠
"zO     对所在范围内所有嵌套的折叠点展开
"change the cursor at different mode
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"status bar 2 line
set laststatus=2
"vim exec *** , exec at the dir where the file is
set autochdir
"let the cursor be at the position where you exit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif







call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'


call plug#end()


colorscheme snazzy
let g:SnazzyTransparent = 1

"<operation>_<motion>

"c motion change
"cw delete from current word to the end
"ciw change in world when you at the middle of the word delete the wordi"
"ci" change in "
"you can also use di yi, all these means 'in'

"f motion find the word
" df: delete to (find :) 
"also for c y






"some tricks
"zz let the current line move to the middle line

"get all the file names in tmp vim file
"ranger v :bulkrename

"row visual
"<shift>+v

"after v-LINE insert *** vim will do *** like in normal for every line (position can also be done by hjkl etc. 
":normal *** 
"eg *** i ---hello---

"block visual
"<ctrl> v
"in block mode, do the motion (i,j) at the select words
"<shift> i or c etc











source ~/.vim/markdown.vim
