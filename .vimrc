"echo ">^.^<"

"Vundel
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'https://github.com/davidhalter/jedi-vim.git'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
call vundle#end()            " required
filetype plugin indent on    " required

"vim
syntax on
colorscheme  default
set nu
"高亮当前行
set cursorline
hi CursorLine cterm=bold
"term=bold 
"cterm=bold 
"guibg=Grey40
"保持与上一行相同的缩进
set autoindent
set ruler


"ctags
set tags=~/tags


"taglist
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window =1
map <F2> :TlistToggle<CR>
map <F3> :TlistOpen<CR>


"NERDTree config
map <F4> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

"ycm
set completeopt=longest,menu  "取消烦人的补全后显示描述
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#000000 guibg=#111100
