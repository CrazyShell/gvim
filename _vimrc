""""F6显示函数 <C-X>文件浏览器 \m标记一些关键字, 空格进行折叠 ,F2"关闭工具栏 呼叫出来和隐藏
""""打开文件列表Ctrl+x Ctrl+f  Alt+1最大化 alt+t是在当前目录下新建标签 alt+` 是转到下一个标签 alt+c关闭当前标签 
""""ma     把当前位置存成标签a  `a 移到跳转到标记 a处
""""设置注释
""""  ,ca，在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
"""" ,c，注释当前行
"""" ,cs，以”性感”的方式注释  /* * **/
"""" ,cA，在当前行尾添加注释符，并进入Insert模式 //例子
"""" ,cu，取消注释
"""" 迅速到某一行 10G   :10
"""" 在某一行中搜索一个字符 fa 就可以找a了 F命令可以在反方向进行行内搜索
"""" %可以搜索与之匹配的对应的()[]{}
"""" ?向上搜索  /向下搜索
"""" ~是大小写互换
"""" Ctrl+r撤销上一次操作
"""" F2显示工具栏 F3编码设置
"""" F1标签切换 mm设置当前标签  
"""" F4 打开文件的头文件
"""" ,be切换buffer
""""  lookupfile
""""  ctrl+]，光标就会跳到函数定义的地方。
"""""   映射LookupFile为,lk
""""" alt+n  <C-TAB> 切换标签
""""" F8画图  F5打开浏览文件窗口
""""" Ctrl-F/Ctrl-B
""""" * 和 # 查找某个word
"""""  s/搜索串/替换串/g
""""" Ctrl+方向键 移动窗口
"""""d$删除光标到末或者是直接大写D
"""""db删除光标前面的字
"""""xp交换两个字母
""""" dd是剪切 p是复制 ddp当前行和下一行换位置
"""""ggVG=
"""""de删除到词尾
"""""b e到字首或者字尾
"""""R 替换当前字符及其后的字符，直至按 ESC 键。
""""" :vimgrep /AAA/ **/*.*  :cw
"""""C-S M-S多文件匹配
"""""Ctrl-W Ctrl-R交换链各个窗口的位置
"""""Ctrl-W= 等大各个窗口
"""""Ctrl-W|
"""""ye复制前后词  
""""" :12,30s/nihao/hello/g    在指定区域中替换
""""" b e是单词之间移动
""""" zf:折叠选定的行
""""" zo:打开折叠
""""" zR:关闭所有折叠
""""" zM:打开所有折叠
""""" zd:删除折叠
""""" H光标移到屏幕顶行 L光标移动到屏幕末汉
"""""C-b      向上滚动一屏
"""""C-f      向下滚动一屏
"""""C-u      向上滚动半屏
"""""C-d      向下滚动半屏
"""""C-y      向上滚动一行
"""""C-e      向下滚动一行
"""""/\<mlin\>
"""""C-z最小化
""""" ,ff是格式化js代码
"""""Ctrl+v   >集体缩进    或者 5 然后再按两下>>就是在本光标下5行集体缩进
"""""shift+j 上下两行合成一行
""""" "ap 复制第一个寄存器的内容
""""" :noh 取消高亮显示
""""" vat  和 vit 匹配<div>标签
""""" a” , a’, a` 和 i”, i’, a`表示引用符号（”, ‘, `）之间的东西，如果输入a”就表示两个匹配 “” 之间的东西，以此类推。
""""" cat cit 在标签中插入
""""" <Leader>vV 全局查找
"ga 查看某个字符的ASCII
"zendcoding-> <C-y>,
"html:5_  _" is a cursor position. and type "<c-y>,"
"emacs宏 qa开始记录 q退出 输入num@a num为操作几次
""
"zf      创建折叠，比如在marker方式下：
"zf56G，创建从当前行起到56行的代码折叠；
"10zf或10zf+或zf10↓，创建从当前行起到后10行的代码折叠。
"10zf-或zf10↑，创建从当前行起到之前10行的代码折叠。
""找到第一个/   df/或者dt/ or vf/x

"""" """" """" 以上是对本vim的快捷设置"""" """" """" """" """" """" """" 
if has('autocmd')
	"清除所有的自动命令，以方便调试
	au!
endif

"语法样式开启
syntax on
"set linebreak

"插入模式下 到前 和尾
:imap <c-a> <esc>I
:imap <c-e> <esc>A

"载入文件类型插件 为特定类型进行缩进q
filetype indent on

"用tab代替C-6
"let gvimim_tab_as_onekey=1
let gvimim_english_in_datafile=1
let gvimim_cloud_sogou=1

set encoding=cp936
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,chinese,taiwan,ansi
""""""""""""""""""""""""""""以上不能动,显示css样式的
autocmd FileType c,asp  setl fdm=syntax | setl fen
:map <f5> :browse edit<cr>

""""打开文件的头文件
"""":map <f4> :IHV<cr>
""""新建一个窗口
:map <f4> :vne<cr>
set nomodifiable
":map <F8> :call ToggleSketch()<CR>

""""updae vimrc easy
nmap ,s :source D:\vim\_vimrc <cr>

""""实现鼠标滚轮
:map <C-Y> <MouseDown>
:map <C-E> <MouseUp> 

""""窗口瞬间移动
nmap ,g :winpos 270 120 <cr>
nmap ,l :winpos 1200 120 <cr>
nmap ,r :winpos -700 120 <cr>
map ,w :set wrap<CR>
map ,nw :set nowrap<CR>

"映射拷贝
"map <C-c> "%yy
"map <C-p> "ap

""粘贴时位置问题
set paste
""""""""""""""""""""""""""""""
" lookupfile setting 使用前要先生成tags 工具栏 生成tags
""""""""""""""""""""""""""""""
let mapleader=","
let g:LookupFile_MinPatLength = 1               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件

""""""""""""""""""""""""""""""
" mark setting  mm清除所有高亮  mr输入正则
""""""""""""""""""""""""""""""
nmap <silent><space>m <Plug>MarkSet
vmap <silent><space>m <Plug>MarkSet
nmap <silent><space><space> <Plug>MarkClear
vmap <silent><space><space> <Plug>MarkClear
nmap <silent><space>r <Plug>MarkRegex
vmap <silent><space>r <Plug>MarkRegex 

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt 
"缩进线设置
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
" 窗口区域切换,F5 后 ↑↓←→  来切换
imap <silent> <C-left> <esc><C-W><left>
vmap <silent> <C-left> <esc><C-W><left>
nmap <silent> <C-left> <C-W><left>
imap <silent> <C-right> <esc><C-W><right>
vmap <silent> <C-right> <esc><C-W><right>
nmap <silent> <C-right> <C-W><right>
imap <silent> <C-up> <esc><C-W><up>
vmap <silent> <C-up> <esc><C-W><up>
nmap <silent> <C-up> <C-W><up>
imap <silent> <C-down> <esc><C-W><down>
vmap <silent> <C-down> <esc><C-W><down>
nmap <silent> <C-down> <C-W><down>
" shift+alt+l 选择行
inoremap <M-L> <C-O><home>v<S-end>
nnoremap <M-L> <home>v<S-end>

hi BookMark_HighLight guifg=blue 

" 自动完成设置 禁止在插入模式移动的时候出现 Complete 提示
"let g:acp_mappingDriven = 1
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l 
"在输入命令时列出匹配项目，也就是截图底部的效果
set wildmenu

"""按esc后自动保存 
au InsertLeave *.* write

""替换`键
"imap ` <ESC>

""""查看编码设置
:map <f3> ms:call ModifyFencView()!<cr>
function ModifyFencView()
    set modifiable
    FencView
endf

""""设置制定编码设置
:map <C-f3> ms:call ConfigMyFecnc()!<cr>
function ConfigMyFecnc()
    set modifiable
    set fileencoding=cp936
endf

""":map <C-s> :vimgrep //F:/My-Projects/MyWeb/fx//*.*
:map <M-s> :cw <CR>

" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%<[%n]\ %F\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}][%{&ff}][ASCII=\%03.3b]\ %-10.(%l,%c%V%)\ %P
set laststatus=2 " always show the status line 
""""显示tab
""""set list
""""set listchars=tab:>-,trail:- 

"让vi记住多少历史记录
set history=300

"忽略大小写的搜索
set ignorecase

"禁止生成临时文件
set nobackup
set noswapfile

"方向键选择文本
set keymodel=startsel,stopsel

"set tw=140     " 140字符自动换行
"set nowrap  "不换行

" 不要在单词中间断行
set lbr

"ctags
let g:ctags_title=1			" To show tag name in title bar.
let g:ctags_statusline=0	" To show tag name in status line.
let generate_tags=1			" To start automatically when a supported file is opened.
let g:ctags_regenerate=0
setlocal statusline+=%#GetTagname#%{GetTagName(line('.'))}%0*

" 突出显示当前行
"set cursorline  

"设置魔术 
set magic
"自动透明
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 234)
"透明化
map <M-1> <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize",1) <CR>
map <M-2> <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize",0) <CR>
map <M-w> :set modifiable<CR>
map <M-3> :set nomodifiable<CR>
:map <M-4> :sp<cr>""""新建向下窗口
if has('gui_running') && has("win32")
    map <M-5> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    imap <M-5> <ESC>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif
map <M-8> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 180) <CR>
map <M-9> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 230) <CR>
map <M-0> <ESC>:call libcallnr("vimtweak.dll", "SetAlpha", 255) <CR>

"窗口置顶
map <M-6> <Esc>:call libcallnr("vimtweak.dll", "EnableTopMost", 1) <CR>
map <M-7> <Esc>:call libcallnr("vimtweak.dll", "EnableTopMost", 0) <CR>
"set guioptions+=b "添加水平滚动条。 如果你指定了不折行， 那为窗口添加一个水平滚动条就非常有必要了。
set guioptions+=r
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"自动在括号和引号之间插入
:imap () ()<esc>i
:imap {} {}<esc>i
:imap <> <><esc>i
:imap [] []<esc>i
:imap "" ""<esc>i
:imap '' ''<esc>i

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch "Highlight search things
vmap <C-c> "+y " 选中状态下 Ctrl+c 复制
let g:NeoComplCache_SmartCase = 1
let g:NeoComplCache_TagsAutoUpdate = 1
let g:NeoComplCache_EnableInfo = 1
let g:NeoComplCache_EnableCamelCaseCompletion = 1
let g:NeoComplCache_MinSyntaxLength = 3
let g:NeoComplCache_EnableSkipCompletion = 1
let g:NeoComplCache_SkipInputTime = '0.5'
" <TAB> completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0


" 字符间插入的像素行数目
set linespace=0

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

set cmdheight=1 "命令行的高度

"set hlsearch "Highlight search things

set ruler "Always show current position


" Set to auto read when a file is changed from the outside
set autoread

" Fast saving & exit
:map s :w!<cr>
:imap <ESC> <ESC>:w!<cr>
" :map q :q<cr>
:map qq :q!<cr>

"" 设置C/C++语言的具体缩进方式（windows风格）
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

set magic

"" 增强模式中的命令行自动完成操作
set wildmenu

"" 保存全局变量
set viminfo+=!

set shellslash
let g:tex_flavor="tex"

"开启命令显示
set showcmd
"打开断行模块
set fo+=mB

"在处理未保存或只读文件的时候 弹出确认
set confirm

"与windows共享剪贴版
set clipboard+=unnamed
set ts=4
set sw=4 "缩进尺寸为4个空格

syn on                  " 打开语法高亮    
"set guifont=consolas:h10.9:cANSI " 设置字体，字体名称和字号    
"set guifont=Courier_New_Bold:h12:cANSI
set guifont=Monaco:h10:cANSI  "配置英文字体
set gfw=consolas:h11:cGB2312   "配置中文字体

set tabstop=4             " 设置tab键的宽度    
set shiftwidth=4           " 换行时行间交错使用4个空格    
set autoindent             " 自动对齐    
set backspace=2           " 设置退格键可用    
set smartindent            " 智能对齐方式    
set cindent 
set ai!                   " 设置自动缩进    
set nu!                   " 显示行号    
set showmatch            " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号    
set ruler                 " 在编辑过程中，在右下角显示光标位置的状态行    
set incsearch              " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到    
                        " 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的    
                        " 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你    
                        " 找要匹配的单词时，别忘记回车    


set vb t_vb=             " vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声 

set smarttab

""颜色设置
"colorscheme evening
""colorscheme grey2
colorscheme twilight  ""里面有关于状态栏的设置
""colorscheme no_quarter
""colorscheme anotherdark
""colorscheme gemcolors 
"colorscheme oceandeep 
""colorscheme dante 

""文件管理器 太慢
""let NERDTree_WinWidth = 10
""nnoremap <silent> <F5> :NERDTree<CR>
""let NERDTreeIgnore=['\.vim$', '\~$']

""CTags

""taglist 浏览函数
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
" 按照名称排序
let Tlist_Sort_Type = "name"
" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1
let Tlist_Show_One_File = 0
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 20
let g:ctags_title=0
let g:ctags_statusline=0
let g:ctags_regenerate=0
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSplitRight=1        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 10  " Split width
let g:bufExplorerUseCurrentWindow=0  " Open in new window.
nnoremap <silent> <F6> :Tlist<CR>


set autochdir

""标签
:map <M-c> :tabc<CR>
:map <M-`> :tabnext<CR>
:map <M-e>  :tabnew<CR>
"":map <M-c> ^w + ^r <CR>

""bufexplorer文件浏览器
let g:bufExplorerDefaultHelp=1
let g:bufExplorerDetailedHelp=0
let g:bufExplorerSortBy='mru'
nmap <C-X> :BufExplorer<CR>
cd E:\My-Projects\MyWeb  ""设置工作目录

""最大化
if has('gui_running') && has("win32")
    au GUIEnter * simalt ~x
endif


"映射ESC键
inoremap jj <Esc>

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
:nmap <C-S> :WMToggle<cr>


""NERD Commenter文件注释
let NERDShutUp = 1

"关闭工具栏 F2呼叫出来和隐藏
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

""javascript设置
""按空格键折叠
"set foldcolumn=2
set foldlevel=100
set foldmethod=indent 
nnoremap tt @=((foldclosed(line('.')) < 0) ? 'zc':'zo') <CR>

" {{{ plugin - DoxygenToolkit.vim 自动生成各种注释
let g:DoxygenToolkit_authorName="Crazybaby - crazybaby@yeah.net"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
map <leader>da :DoxAuthor<CR>
map <leader>df :Dox<CR>
map <leader>db :DoxBlock<CR>
map <leader>dc a /*  */<LEFT><LEFT><LEFT>
" }}}

"" ConvertHtmlEncoding {{{
function! ConvertHtmlEncoding(encoding)
	if a:encoding ==? 'gb2312'
		return 'gbk'              " GB2312 imprecisely means GBK in HTML
	elseif a:encoding ==? 'iso-8859-1'
		return 'latin1'           " The canonical encoding name in Vim
	elseif a:encoding ==? 'utf8'
		return 'utf-8'            " Other encoding aliases should follow here
	else
		return a:encoding
	endif
endfunction
" }}}

set foldmethod=syntax
"" TOhtml 相关 {{{
"" 运行 runtime! syntax/2html.vim 时保留 folding 特性
let html_dynamic_folds = 1
"" 代码行号从 0 开始
" let html_number_lines=0
"" 恢复默认
" unlet html_number_lines
"" 使用 css
" let html_use_css=1
"" 代码折叠
" let html_ignore_folding=1
" }}}


"c/c++/java file. It also handles folding markers.

" Folding function definition 
function MyFoldfun(lineNum) 
if getline(a:lineNum+1)=~'^{' 
return 'a1' 
elseif getline(a:lineNum-1)=~'^}' 
return 's1' 
elseif getline(a:lineNum)=~'.\+{' 
return 'a1' 
elseif getline(a:lineNum)=~'.\+}' 
return 's1' 
else 
return '=' 
endif 
endfunction 

" Folding setting comes here 
if has("autocmd") 
augroup cprog 
autocmd FileType c,cpp,sed,awk,pl set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,:// expandtab foldcolumn=4 foldmethod=expr foldexpr=MyFoldfun(v:lnum) 
augroup END 
else 
set foldcolumn=4 
set foldmethod=expr 
set foldexpr=MyFoldfun(v:lnum) 
endif


set foldmethod=expr
set foldexpr=getline(v:lnum)=~'''!'&&getline(v:lnum-1)!~'!'?'>1':'='
let b:javascript_fold=1 


set foldmethod=marker

"jslint 
if has("win32") && v:lang == 'zh_CN.utf-8'
    let jsl_command = iconv(jsl_command, 'utf-8', 'gbk')
  endif

  if has("win32") && v:lang == 'zh_CN.utf-8'
    let cmd_output = iconv(cmd_output, 'gbk', 'utf-8')
  endif
let g:jslint_command = 'jsl'
let g:jslint_command_options = '-nofilelisting -nocontext -nosummary -nologo -process'
map <C-j><C-s> :call JavascriptLint()<cr>


"映射方向键
:imap <C-j> <up>
:imap <C-k> <down>
:imap <C-h> <left>
:imap <C-l> <right>
:imap <C-f> <right>
:imap <C-b> <left>


let b:javascript_fold=1
let javascript_enable_domhtmlcss=1


filetype plugin indent on
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType asp set omnifunc=aspcomplete#Complete
if has("autocmd") && exists("+omnifunc")
     autocmd Filetype *
   \ if &omnifunc == "" |
   \ setlocal omnifunc=syntaxcomplete#Complete |
   \ endif
endif
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1


"字典设置
au FileType javascript set dictionary+=E:/gvim/dict/javascript.txt
au FileType html set dictionary+=E:/gvim/dict/javascript.txt
au FileType asp set dictionary+=E:/gvim/dict/javascript.txt

"" dictionary {{{
" nmap <C-\> :!sdcv "<cword>" <C-R>=expand("<cword>")<CR><CR>
	nmap <silent><leader>d :!curl dict://dict.org/d:<cword><CR><CR>
" }}}


function! Translate()
	pyfile $VIM\vim73\plugin\vim_translate.py
endfunction
:nmap <silent> ,d :call Translate()<CR>


set undofile
set undodir=$VIMFILES/\_undodir
set undolevels=1000 "maximum number of changes that can be undone


" {{{ plugin -yankring.vim 寄存器可视操作
:map <leader>y :YRShow<CR>
:map <leader>yc :YRClear<CR>
" }}}
"
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
"显示标题
"set title titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \Happy\ Hacking\-\-\Crazybaby

"Accoring to your selection and search
vnoremap  *  y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap  #  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
