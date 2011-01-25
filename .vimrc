
"显示行数
set nu

"显示标尺
set ru

"高亮显示语法
syntax on

"配色风格

colorscheme desert

"显示编辑文件的标题

set title

"自动换行

set wrap

"缩进

set tabstop=4
"set softtabstop=4
set shiftwidth=4
set smarttab
"将tab扩展成空格
set expandtab
set nocompatible
"set magic
"设置c/c++的自动缩进方式
"set cindent

"使用vim设置

set cursorline

set cursorcolumn

"搜索时高亮显示匹配项
set hlsearch
set showmatch

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

filetype plugin on
filetype plugin indent on
let g:pydiction_location = '~/.vim/after/ftplugin/pydiction-1.2/complete-dict'




"  copy/paste
" CTRL-X and SHIFT-Del are Cut
"vnoremap <C-X> "+x
"vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
"vnoremap <C-C> "+y
"vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
"map <C-V>   	"+gP
"map <S-Insert>  	"+gP

"cmap <C-V>  	<C-R>+
"cmap <S-Insert> 	<C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

imap <S-Insert> 	<C-V>
vmap <S-Insert> 	<C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>   	<C-V>
set paste

"设置每行缩进与上行相等
set ai

"设置多tab快捷方式
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
