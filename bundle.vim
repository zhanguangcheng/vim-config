set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin('~/.vim/bundle/')

"插件管理
Plugin 'https://github.com/VundleVim/Vundle.vim'

"文件夹浏览
Plugin 'https://github.com/scrooloose/nerdtree'

"主题配色
"Plugin 'https://github.com/sickill/vim-monokai'
Plugin 'https://github.com/tomasr/molokai'

"显示底部文件信息 和 顶部标签栏功能
Plugin 'https://github.com/vim-airline/vim-airline'

"前端必备Emmet
Plugin 'https://github.com/mattn/emmet-vim'

"tagbar
Plugin 'https://github.com/majutsushi/tagbar'

"L9是一个vim脚本库,它提供了一些实用函数和命令
Plugin  'https://github.com/vim-scripts/L9'

"快速跳转文件, 最近buffer tag bookmark等
"Plugin  'https://github.com/vim-scripts/FuzzyFinder'
Plugin 'https://github.com/kien/ctrlp.vim'

"注释
Bundle 'https://github.com/scrooloose/nerdcommenter'

"括号引号等自动补全
Bundle 'https://github.com/tpope/vim-surround'

"等号对其
Bundle 'https://github.com/godlygeek/tabular'

"更加精准得跳转
Bundle 'https://github.com/Lokaltog/vim-easymotion'

"语法检测
Bundle 'https://github.com/scrooloose/syntastic'

"最近文件列表
Bundle 'https://github.com/vim-scripts/mru.vim'

"PHP
"Bundle 'https://github.com/shawncplus/php.vim'
"Bundle 'https://github.com/shawncplus/phpcomplete.vim'

Bundle 'https://github.com/evanmiller/nginx-vim-syntax'
call vundle#end()


"NERDTree{
    "技巧：
    "?:打开＆关闭帮助 o:打开＆关闭目录｜文件 m:显示菜单(添加、移动、删除等) u:返回上级目录 C :设置当前目录为根目录 r|R:刷新目录 F:显示＆隐藏文件
    "x:收起父目录 X:收起所有的子目录以下的目录 p:跳到父目录 P: 跳到顶级目录 J:跳到最后一个节点 K:跳到第一个节点
    "Bookmark <名字>: 新建一个Bookamrk D:删除当前Bookmark
    "NERDTreeFind :打开当前文件在NERDTree中的位置

    let NERDTreeWinPos='left' "窗口显示位置
    let NERDTreeWinSize=31 "窗口宽度
    let g:NERDTreeDirArrowExpandable = '+' "文件夹收起时显示的字符
    let g:NERDTreeDirArrowCollapsible = '-' "文件夹展开时显示的字符
    let NERDTreeShowBookmarks=1 "显示书签
    let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt' "保存书签的文件位置
    let NERDTreeMouseMode=3 "指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
    let NERDTreeShowLineNumbers=1     "是否默认显示行号
    let NERDTreeMinimalUI=1 "采用简版的界面（隐藏了帮助面板和返回上级目录）
    let g:NERDTreeIgnore=[ '\.jpg$','\.png$' ] "指定忽略的文件
    "autocmd VimEnter * NERDTree "打开窗口时自动打开NERDTree
    map <F2> :NERDTreeToggle<CR>
    map <Leader>e :NERDTreeToggle<CR>
"}


"colorscheme{
    set t_Co=256
    colorscheme molokai
"}


"airline{
    "显示底部文件信息 和 顶部标签栏功能
    "let g:airline#extensions#tabline#enabled = 1
    "let g:airline#extensions#tabline#buffer_nr_show = 1
    let g:airline_inactive_collapse=1
    let g:airline_left_sep = '>'
    let g:airline_right_sep = '<'
    "nnoremap <C-N> :bn<CR>
    "nnoremap <C-P> :bp<CR>
"}


"Emmet{
    "前端必备Emmet
    let g:user_emmet_expandabbr_key = '<C-E>' "触发的快捷键
    let g:use_emmet_complete_tag = 1
"}


"tagbar{
    "*****此插件依赖ctags******
    "技巧
    "?:打开&关闭帮助　<C-N> <C-P>:跳转下一个&上一个区块 p:打开指定的标记(焦点在tagbar窗口) 
    "<ENTER>:打开指定的标记(焦点在打开的窗口中) s:切换排序(原始&字母) q:退出tagbar
    let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
    let g:tagbar_width=30                    "窗口宽度的设置
    "autocmd BufReadPost *.php,*.js call tagbar#autoopen() "指定的文件后缀自动打开tagbar
    map <F3> :Tagbar<CR>
    map <leader>r :Tagbar<CR>
"}


"MRU{
   map <Leader>b :MRU<CR>
"}


"ctrlp{
    "<C-P> 调出搜索列表  <C-J> <C-K> 上下移动
"}


"nerdcommenter{
    ",cc 添加注释 ,ci删除注释 ,c<space> 添加/删除注释

"}

"syntastic{
    ":Errors 错误列表
    let g:syntastic_check_on_open = 1
    let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"}

