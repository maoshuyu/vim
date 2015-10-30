"开启鼠标支持
set mouse=a

"关闭自动折行
set nowrap

"设置折叠方式
set foldmethod=manual

"编码设置
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb2312,chinese,prc,taiwan,latin-1
set termencoding=utf-8
set termencoding=utf-8

"显示行号
set number

"缩进设置
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set smarttab
set expandtab

"GUI设置
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions+=i
set guioptions-=m
set guioptions+=c

"关闭vi兼容模式
set nocompatible

"状态栏设置
set laststatus=2
set statusline=%t%r%h%w\ [%Y]\ [%{&ff}]\ [%{&fenc}:%{&enc}]\ [%08.8L]\ [%p%%-%P]\ [%05.5b]\ [%04.4B]\ [%08.8l]%<\ [%04.4c-%04.4v%04.4V]

"设置光标距离上下边界的距离
set so=1

"关闭自动折行
"set wrap
set nowrap

"忽略大小写匹配
set ignorecase

"开启输入时的搜索
set incsearch

"搜索关键词高亮
set hlsearch

"行间距
set linespace=1

"使用微软雅黑字体
set guifontwide=YaHei\ Consolas\ Hybrid:h14

"按完整单词折行
set nolinebreak

"命令行历史
set history=819222

"自动语法高亮
syntax on

"不突出显示当前行
set nocursorline

"不突出显示当前列
set nocursorcolumn

"覆盖文件时不备份，关闭自动备份
set nobackup

"文字颜色
colors default

"文件格式
set fileformat=unix
set fileformats=unix

"背景颜色
set background=light

"开启插件
filetype plugin on
filetype on

"清除windows下的换行
command -nargs=0 Clearwin : call Clearwin()
function Clearwin()
    silent execute ':%s/\r//g'
endfunction

set fdm=marker

"less 高亮
au BufNewFile,BufRead *.less set filetype=less

"pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags

"syntastic
let g:syntastic_javascript_checkers=["eslint"]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

