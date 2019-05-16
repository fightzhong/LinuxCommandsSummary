" Xshell 设置: Properties => Appearance => Color Scheme选择Pastel on Black (第6个) => Edit编辑该外观 => ANSI Colors选择深蓝色
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

" 取消输入错误的时候的bell声音
set vb

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

