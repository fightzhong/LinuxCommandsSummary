" 设置行号
set number

"启动鼠标
set mouse=a

" Tab键宽度的空格数
set tabstop=3

" 自动缩进
set autoindent
set cindent

" 统一缩进为3
set softtabstop=3
set shiftwidth=3

" 语法高亮
syntax on

" 高亮显示匹配的括号
set showmatch

" 允许折叠
set foldenable

" 手动折叠
set foldmethod=manual

" 编码
set encoding=utf-8

" 映射复制
vmap <C-c> "+y

" 新建.sh, h, .java文件自动插入文件头
"autocmd BufNewFile *.sh,*.java exec ":call SetTitle()"

