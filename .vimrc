" set nocompateble               " be iMprved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
source ~/.vim/vundle_file

" 解决 vi 在 tmux 下方向键变为 ABCD 的问题：
" http://vim.wikia.com/wiki/Fix_arrow_keys_that_display_A_B_C_D_on_remote_shell
"set term=xterm

set guifont=Monaco:h12
" set guifont=Bitstream\ Vera\ Sans\ Mono:h12
" 设定文件浏览器目录为当前目录
set bsdir=buffer
" 设置编码
set enc=utf-8
" 设置文件编码
set fenc=utf-8
" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
" 设置开启语法高亮
syntax on
"显示行号
set number
" 查找结果高亮度显示
set hlsearch
" 不生成swp文件
set noswapfile

let g:airline_theme='light'
" 设置高亮光标所在行列
"set cursorline
"set cursorcolumn
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"set colorcolumn=100

set linespace=5
" tab宽度
"set tabstop=2
"set cindent shiftwidth=4
"set autoindent shiftwidth=4
set autoindent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
"set noexpandtab
set tabstop=2
set shiftwidth=2"

let mapleader=";"
vnoremap <C-c> "+y
vnoremap <C-v> "+p

filetype plugin indent on
" 把 F8 映射到 启动NERDTree插件  
map <F8> :NERDTree<CR>
map <Leader>tt :NERDTree<CR>
map <Leader>f :!firefox %<CR>

" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了  
inoremap <Space>s <esc>:w<CR>
nnoremap <Space>s :w<CR>

colorscheme railscasts
"function Maximize_Window()
	"silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
"endfunction
filetype plugin on
" 修改swapfile路径
set dir=~/.vim/backup/
let g:rsenseHome = "/usr/lib/rsense-0.3"
let g:rsenseUseOmniFunc = 1
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:ackprg="ag -H --color --nogroup --column"

" Command-T
let g:CommandTMaxFiles=20000
set wildignore+=public,.git 
map <F9> :CommandTFlush<CR>

let g:Powerline_symbols = 'fancy'

" ctrlp
let g:ctrlp_max_files=1000000
let g:ctrlp_max_height=25
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
      \ 'file': '\.so$\|\.dat$|\.DS_Store$'
      \ }

map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=.js --exclude=.css --exclude=log --exclude=.log -R * `gem environment gemdir`/gems/*<CR><CR>

" vim-rubocop 
let g:vimrubocop_config = '/Users/kimi/tmp/.rubocop.yml'
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
set nocompatible

" vim-go
set autowrite
let g:go_version_warning = 0
