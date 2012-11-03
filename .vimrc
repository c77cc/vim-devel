" Vim settings, not Vi settings.  must be first
set nocompatible
" 帮助手册使用中文
set helplang=cn
" 隐藏工具栏
set guioptions-=T
" 语法高亮
set syntax=on
" 高亮当前行
"set cursorline
"配色方案

colorscheme terminal
if has("gui_running")
  colorscheme my_clean
  set lines=64
  set columns=130
  set t_Co=256
else
  let g:CSApprox_loaded = 0
"修正ubuntu下显示'CSApprox needs gui support - not loading'错误的问题
  let g:CSApprox_verbose_level = 0
endif


" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" 自动换行
set wrap
" 整词换行
set linebreak
"自动缩进，缩进尺度为4个空格
set sw=4
" Tab 宽度为4个空格
set ts=4
" 编辑时将所有 Tab  替换为空格
set et
" 只按一下 Backspace 就删除 4 个空格了
set smarttab
" 高亮80列
set cc=120
" Tab键的宽度
" set tabstop=4
" 统一缩进为4
" set softtabstop=4
" set shiftwidth=4
" 用空格代替制表符
set expandtab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set helplang=cn
set encoding=utf8 
"set langmenu=zh_CN.UTF-8 
set langmenu=en_US.UTF-8 
set imcmdline

call pathogen#infect()

au BufRead,BufNewFile *.twig set syntax=htmljinja

" 打开javascript折叠
let b:javascript_fold=1

"代码折叠
set foldenable
set foldmethod=indent
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"""""""""""""""""""""""""""
" PHP 
"""""""""""""""""""""""""""
"PHP 自动补全
au FileType php setlocal dict+=~/.vim/dict/php_funclist.txt
au Filetype php    set omnifunc=phpcomplete#CompletePHP

"PHP代码注释
inoremap <C-o> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-o> :call PhpDocSingle()<CR> 
vnoremap <C-o> :call PhpDocRange()<CR>

" PHP Manual
"set runtimepath+=~/.vim/phpdoc
"autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"
autocmd FileType php setlocal keywordprg=pman

"""""""""""""""""""""""""""
" Erlang 
"""""""""""""""""""""""""""
autocmd BufEnter *.escript   if &filetype == '' | setlocal filetype=erlang | endif
autocmd FileType erlang,haskell,ocaml   setlocal foldmethod=indent expandtab tabstop=4 shiftwidth=4 textwidth=0
let erlang_folding     = 1
let erlang_show_errors = 0
let erlang_skel_header = {'author': 'c77cc <yaohuaq@gmail.com>'}

"""""""""""""""""""""""""""
" Cscope
"""""""""""""""""""""""""""
if has("cscope")
    " 优先使用 cscope ，其次ctags
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif


""""""""""""""""""""""""""""
"  EasyBuffer
""""""""""""""""""""""""""""
:nnoremap <C-b> :EasyBuffer<CR>

""""""""""""""""""""""""""""
"  缓冲区切换
""""""""""""""""""""""""""""
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

""""""""""""""""""""""""""""
" Taglist
""""""""""""""""""""""""""""
if has("gui_running")
    let Tlist_Inc_Winwidth=0
else
    let Tlist_Inc_Winwidth=1
endif
"nnoremap   :Tlist

""""""""""""""""""""""""""""
"  NERD Tree
""""""""""""""""""""""""""""
let g:NERDTree_title="[NERD Tree]"
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=41
"map f :NERDTreeToggle<cr>

""""""""""""""""""""""""""""
" Winmanager 
""""""""""""""""""""""""""""
"let g:winManagerWindowLayout='NERDTree|TagList'
let g:winManagerWindowLayout='NERDTree'
nmap wm :WMToggle<cr>

" Winmanger 与NERD_Tree 兼容的配置
function! NERDTree_Start()
    exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
    return 1
endfuncti
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
"nmap <F3> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>

""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 

""""""""""""""""""""""""""""""
" Lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("filenametags")                "设置tag文件的名字
    let g:LookupFile_TagExpr = '"filenametags"'
endif
"映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>

"""""""""""""""""""
" for Mac OS X
""""""""""""""""""
set guifont=Courier:h14
if has('gui_running')
    if has('gui_macvim')
        set guioptions+=e
    endif

    if has("mac") || has("gui_macvim")
        if has("gui_macvim")
            " 开启抗锯齿渲染
            set anti
            " MacVim 下的字体配置
            set guifont=Courier:h14
            "set guifontwide=YouYuan:h14
            "set guifont=YaHei_Consolas_Hybrid:h13

            "set transparency=8
            set lines=222 columns=222

            " 使用 MacVim 原生的全屏幕功能
            let s:lines=&lines
            let s:columns=&columns
            func! FullScreenEnter()
                set lines=999 columns=999
                set fu
            endf

            func! FullScreenLeave()
                let &lines=s:lines
                let &columns=s:columns
                set nofu
            endf

            func! FullScreenToggle()
                if &fullscreen
                    call FullScreenLeave()
                else
                    call FullScreenEnter()
                endif
            endf
        endif
    endif
endif

""""""""""""""""""""""""""""
" XDebugger
"""""""""""""""""""""""""""
"let g:debuggerPort = 7777
"let g:debuggerMiniBufExpl = 1
"let g:debuggerMaxDepth = 8
"let g:debuggerTimeout = 10
"command Debug :python debugger_init(1)
"command D :Debug

let g:vdebug_options= {
 \   "port" : 7777,
 \   "server" : 'localhost',
 \   "timeout" : 20,
 \   "on_close" : 'detach',
 \   "break_on_open" : 1,
 \   "ide_key" : '',
 \   "remote_path" : "",
 \   "local_path" : "",
 \   "debug_window_level" : 0,
 \   "debug_file_level" : 0,
 \   "debug_file" : "",
\}
let g:vdebug_keymap = {
\    "run" : "<F5>",
\    "run_to_cursor" : "<F1>",
\    "step_into" : "<F2>",
\    "step_over" : "<F3>",
\    "step_out" : "<F4>",
\    "close" : "<F6>",
\    "detach" : "<F7>",
\    "set_breakpoint" : "<F10>",
\    "get_context" : "<F11>",
\    "eval_under_cursor" : "<F12>",
\}
