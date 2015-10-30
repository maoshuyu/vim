"�������֧��
set mouse=a

"�ر��Զ�����
set nowrap

"�����۵���ʽ
set foldmethod=manual

"��������
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb2312,chinese,prc,taiwan,latin-1
set termencoding=utf-8
set termencoding=utf-8

"��ʾ�к�
set number

"��������
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set smarttab
set expandtab

"GUI����
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions+=i
set guioptions-=m
set guioptions+=c

"�ر�vi����ģʽ
set nocompatible

"״̬������
set laststatus=2
set statusline=%t%r%h%w\ [%Y]\ [%{&ff}]\ [%{&fenc}:%{&enc}]\ [%08.8L]\ [%p%%-%P]\ [%05.5b]\ [%04.4B]\ [%08.8l]%<\ [%04.4c-%04.4v%04.4V]

"���ù��������±߽�ľ���
set so=1

"�ر��Զ�����
"set wrap
set nowrap

"���Դ�Сдƥ��
set ignorecase

"��������ʱ������
set incsearch

"�����ؼ��ʸ���
set hlsearch

"�м��
set linespace=1

"ʹ��΢���ź�����
set guifontwide=YaHei\ Consolas\ Hybrid:h14

"��������������
set nolinebreak

"��������ʷ
set history=819222

"�Զ��﷨����
syntax on

"��ͻ����ʾ��ǰ��
set nocursorline

"��ͻ����ʾ��ǰ��
set nocursorcolumn

"�����ļ�ʱ�����ݣ��ر��Զ�����
set nobackup

"������ɫ
colors default

"�ļ���ʽ
set fileformat=unix
set fileformats=unix

"������ɫ
set background=light

"�������
filetype plugin on
filetype on

"���windows�µĻ���
command -nargs=0 Clearwin : call Clearwin()
function Clearwin()
    silent execute ':%s/\r//g'
endfunction

set fdm=marker

"less ����
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

