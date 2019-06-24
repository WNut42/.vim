"filetype off
"set rtp+=~/.vim/autoload/
"call vundle#rc()
"source ~/.vim/vundle_file

let mapleader=";"

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'KimiGao/better-snipmate-snippet'
Plug 'jlanzarotta/bufexplorer'
Plug 'Townk/vim-autoclose'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'vim-scripts/ack.vim'
Plug 'mileszs/ack.vim'
Plug 'suan/vim-instant-markdown'
Plug 'tpope/vim-fugitive'
Plug 'nelstrom/vim-markdown-preview'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ngmy/vim-rubocop'
Plug 'fatih/vim-go'
Plug 'slim-template/vim-slim'
Plug 'StanAngeloff/php.vim'
Plug 'chr4/nginx.vim'
Plug 'leafgarland/typescript-vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
Plug 'majutsushi/tagbar'
call plug#end()

" 解决 vi 在 tmux 下方向键变为 ABCD 的问题：
" http://vim.wikia.com/wiki/Fix_arrow_keys_that_display_A_B_C_D_on_remote_shell
"set term=xterm

" 解决 vim 在 tmux 下样式不对的问题
"set background=dark
"set t_Co=256

set guifont=Noto\ Mono\ for\ Powerline:h12
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
" 修改swapfile路径
set dir=~/.vim/backup/

" airline
let g:airline_theme='light'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" 设置高亮光标所在行列
"set cursorline
"set cursorcolumn
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"set colorcolumn=100

set linespace=5
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

autocmd FileType php set shiftwidth=4 shiftwidth=4 softtabstop=4 | set expandtab


" For Terminal on macOS
" Mode Settings
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Cursor settings:
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" For iTerm2 on OS X
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" For tmux running in iTerm2 on OS X
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"


" 全局粘贴复制
vnoremap <C-c> "+y
"nnoremap <C-v> "+p

filetype plugin indent on  
map <Leader>t :NERDTree<CR>  
map <Leader>v :NERDTreeFind<CR>  

" 检索
map <Leader>f :Ack 

" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了  
inoremap <Leader>s  <esc>:w<CR>  
nnoremap <Leader>s  :w<CR>
inoremap <Leader>wq <esc>:wq<CR>  
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q  :q<CR>
nnoremap <Leader>qa :qall<CR>
nnoremap <Leader>gb :Gblame<CR>

nnoremap <Leader>vsp :vsp<CR>
nnoremap <Leader>sp :sp<CR>

nnoremap <Leader>p :FZF<CR>

colorscheme railscasts
filetype plugin on
if executable('ag')
  let g:ackprg="ag --vimgrep"
endif

" ctrlp
let g:ctrlp_max_files=1000000
let g:ctrlp_max_height=25
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
      \ 'file': '\.so$\|\.dat$|\.DS_Store$'
      \ }
let g:ctrlp_root_markers=['.ctrlp']
"let g:ctrlp_working_path_mode=0

" vim-php-cs-fixer
let g:php_cs_fixer_rules = "@PSR2"                " options: --rules (default:@PSR2)
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
let g:php_cs_fixer_config_file="/Users/gaoshengyang/.php_cs/.php_cs.dist" " 自定义格式化配置

" Denite
map <C-p> :Denite file/rec buffer<CR>

nnoremap <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=.js --exclude=.css --exclude=log --exclude=.log -R * `gem environment gemdir`/gems/*<CR><CR>
nnoremap <Leader>ct :!ctags -R .<CR><CR>
nnoremap <C-]> g<C-]>

" vim-rubocop 
let g:vimrubocop_config = '/Users/kimi/tmp/.rubocop.yml'
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
nmap <Leader>h :!php -l % <CR>
set nocompatible

" vim-go
set autowrite
nnoremap <Leader>go :GoRun %<CR>

" execute
nnoremap <Leader>pp :!php %<CR>
nnoremap <Leader>rr :!ruby %<CR>

" puts the caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

" iknow debug
map <leader>log o file_put_contents('/home/work/users/gsy/debug.log', __FILE__.' '.__LINE__.PHP_EOL.var_export($1, true).PHP_EOL, FILE_APPEND);
map <leader>blog o Bd_Log::notice("\n==================\n\n".json_encode()."\n\n===================\n");
