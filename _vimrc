""""F6��ʾ���� <C-X>�ļ������ \m���һЩ�ؼ���, �ո�����۵� ,F2"�رչ����� ���г���������
""""���ļ��б�Ctrl+x Ctrl+f  Alt+1��� alt+t���ڵ�ǰĿ¼���½���ǩ alt+` ��ת����һ����ǩ alt+c�رյ�ǰ��ǩ 
""""ma     �ѵ�ǰλ�ô�ɱ�ǩa  `a �Ƶ���ת����� a��
""""����ע��
""""  ,ca���ڿ�ѡ��ע�ͷ�ʽ֮���л�������C/C++ �Ŀ�ע��/* */����ע��//
"""" ,c��ע�͵�ǰ��
"""" ,cs���ԡ��ԸС��ķ�ʽע��  /* * **/
"""" ,cA���ڵ�ǰ��β���ע�ͷ���������Insertģʽ //����
"""" ,cu��ȡ��ע��
"""" Ѹ�ٵ�ĳһ�� 10G   :10
"""" ��ĳһ��������һ���ַ� fa �Ϳ�����a�� F��������ڷ����������������
"""" %����������֮ƥ��Ķ�Ӧ��()[]{}
"""" ?��������  /��������
"""" ~�Ǵ�Сд����
"""" Ctrl+r������һ�β���
"""" F2��ʾ������ F3��������
"""" F1��ǩ�л� mm���õ�ǰ��ǩ  
"""" F4 ���ļ���ͷ�ļ�
"""" ,be�л�buffer
""""  lookupfile
""""  ctrl+]�����ͻ�������������ĵط���
"""""   ӳ��LookupFileΪ,lk
""""" alt+n  <C-TAB> �л���ǩ
""""" F8��ͼ  F5������ļ�����
""""" Ctrl-F/Ctrl-B
""""" * �� # ����ĳ��word
"""""  s/������/�滻��/g
""""" Ctrl+����� �ƶ�����
"""""d$ɾ����굽ĩ������ֱ�Ӵ�дD
"""""dbɾ�����ǰ�����
"""""xp����������ĸ
""""" dd�Ǽ��� p�Ǹ��� ddp��ǰ�к���һ�л�λ��
"""""ggVG=
"""""deɾ������β
"""""b e�����׻�����β
"""""R �滻��ǰ�ַ��������ַ���ֱ���� ESC ����
""""" :vimgrep /AAA/ **/*.*  :cw
"""""C-S M-S���ļ�ƥ��
"""""Ctrl-W Ctrl-R�������������ڵ�λ��
"""""Ctrl-W= �ȴ��������
"""""Ctrl-W|
"""""ye����ǰ���  
""""" :12,30s/nihao/hello/g    ��ָ���������滻
""""" b e�ǵ���֮���ƶ�
""""" zf:�۵�ѡ������
""""" zo:���۵�
""""" zR:�ر������۵�
""""" zM:�������۵�
""""" zd:ɾ���۵�
""""" H����Ƶ���Ļ���� L����ƶ�����Ļĩ��
"""""C-b      ���Ϲ���һ��
"""""C-f      ���¹���һ��
"""""C-u      ���Ϲ�������
"""""C-d      ���¹�������
"""""C-y      ���Ϲ���һ��
"""""C-e      ���¹���һ��
"""""/\<mlin\>
"""""C-z��С��
""""" ,ff�Ǹ�ʽ��js����
"""""Ctrl+v   >��������    ���� 5 Ȼ���ٰ�����>>�����ڱ������5�м�������
"""""shift+j �������кϳ�һ��
""""" "ap ���Ƶ�һ���Ĵ���������
""""" :noh ȡ��������ʾ
""""" vat  �� vit ƥ��<div>��ǩ
""""" a�� , a��, a` �� i��, i��, a`��ʾ���÷��ţ���, ��, `��֮��Ķ������������a���ͱ�ʾ����ƥ�� ���� ֮��Ķ������Դ����ơ�
""""" cat cit �ڱ�ǩ�в���
""""" <Leader>vV ȫ�ֲ���
"ga �鿴ĳ���ַ���ASCII
"zendcoding-> <C-y>,
"html:5_  _" is a cursor position. and type "<c-y>,"
"emacs�� qa��ʼ��¼ q�˳� ����num@a numΪ��������
""
"zf      �����۵���������marker��ʽ�£�
"zf56G�������ӵ�ǰ����56�еĴ����۵���
"10zf��10zf+��zf10���������ӵ�ǰ���𵽺�10�еĴ����۵���
"10zf-��zf10���������ӵ�ǰ����֮ǰ10�еĴ����۵���
""�ҵ���һ��/   df/����dt/ or vf/x

"""" """" """" �����ǶԱ�vim�Ŀ������"""" """" """" """" """" """" """" 
if has('autocmd')
	"������е��Զ�����Է������
	au!
endif

"�﷨��ʽ����
syntax on
"set linebreak

"����ģʽ�� ��ǰ ��β
:imap <c-a> <esc>I
:imap <c-e> <esc>A

"�����ļ����Ͳ�� Ϊ�ض����ͽ�������q
filetype indent on

"��tab����C-6
"let gvimim_tab_as_onekey=1
let gvimim_english_in_datafile=1
let gvimim_cloud_sogou=1

set encoding=cp936
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,chinese,taiwan,ansi
""""""""""""""""""""""""""""���ϲ��ܶ�,��ʾcss��ʽ��
autocmd FileType c,asp  setl fdm=syntax | setl fen
:map <f5> :browse edit<cr>

""""���ļ���ͷ�ļ�
"""":map <f4> :IHV<cr>
""""�½�һ������
:map <f4> :vne<cr>
set nomodifiable
":map <F8> :call ToggleSketch()<CR>

""""updae vimrc easy
nmap ,s :source D:\vim\_vimrc <cr>

""""ʵ��������
:map <C-Y> <MouseDown>
:map <C-E> <MouseUp> 

""""����˲���ƶ�
nmap ,g :winpos 270 120 <cr>
nmap ,l :winpos 1200 120 <cr>
nmap ,r :winpos -700 120 <cr>
map ,w :set wrap<CR>
map ,nw :set nowrap<CR>

"ӳ�俽��
"map <C-c> "%yy
"map <C-p> "ap

""ճ��ʱλ������
set paste
""""""""""""""""""""""""""""""
" lookupfile setting ʹ��ǰҪ������tags ������ ����tags
""""""""""""""""""""""""""""""
let mapleader=","
let g:LookupFile_MinPatLength = 1               "��������2���ַ��ſ�ʼ����
let g:LookupFile_PreserveLastPattern = 0        "�������ϴβ��ҵ��ַ���
let g:LookupFile_PreservePatternHistory = 1     "���������ʷ
let g:LookupFile_AlwaysAcceptFirst = 1          "�س��򿪵�һ��ƥ����Ŀ
let g:LookupFile_AllowNewFiles = 0              "�������������ڵ��ļ�

""""""""""""""""""""""""""""""
" mark setting  mm������и���  mr��������
""""""""""""""""""""""""""""""
nmap <silent><space>m <Plug>MarkSet
vmap <silent><space>m <Plug>MarkSet
nmap <silent><space><space> <Plug>MarkClear
vmap <silent><space><space> <Plug>MarkClear
nmap <silent><space>r <Plug>MarkRegex
vmap <silent><space>r <Plug>MarkRegex 

" ������ʾ��ͨtxt�ļ�����Ҫtxt.vim�ű���
au BufRead,BufNewFile *  setfiletype txt 
"����������
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
" ���������л�,F5 �� ��������  ���л�
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
" shift+alt+l ѡ����
inoremap <M-L> <C-O><home>v<S-end>
nnoremap <M-L> <home>v<S-end>

hi BookMark_HighLight guifg=blue 

" �Զ�������� ��ֹ�ڲ���ģʽ�ƶ���ʱ����� Complete ��ʾ
"let g:acp_mappingDriven = 1
" ����backspace�͹�����Խ�б߽�
set whichwrap+=<,>,h,l 
"����������ʱ�г�ƥ����Ŀ��Ҳ���ǽ�ͼ�ײ���Ч��
set wildmenu

"""��esc���Զ����� 
au InsertLeave *.* write

""�滻`��
"imap ` <ESC>

""""�鿴��������
:map <f3> ms:call ModifyFencView()!<cr>
function ModifyFencView()
    set modifiable
    FencView
endf

""""�����ƶ���������
:map <C-f3> ms:call ConfigMyFecnc()!<cr>
function ConfigMyFecnc()
    set modifiable
    set fileencoding=cp936
endf

""":map <C-s> :vimgrep //F:/My-Projects/MyWeb/fx//*.*
:map <M-s> :cw <CR>

" �ҵ�״̬����ʾ�����ݣ������ļ����ͺͽ��룩
"set statusline=%<[%n]\ %F\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}][%{&ff}][ASCII=\%03.3b]\ %-10.(%l,%c%V%)\ %P
set laststatus=2 " always show the status line 
""""��ʾtab
""""set list
""""set listchars=tab:>-,trail:- 

"��vi��ס������ʷ��¼
set history=300

"���Դ�Сд������
set ignorecase

"��ֹ������ʱ�ļ�
set nobackup
set noswapfile

"�����ѡ���ı�
set keymodel=startsel,stopsel

"set tw=140     " 140�ַ��Զ�����
"set nowrap  "������

" ��Ҫ�ڵ����м����
set lbr

"ctags
let g:ctags_title=1			" To show tag name in title bar.
let g:ctags_statusline=0	" To show tag name in status line.
let generate_tags=1			" To start automatically when a supported file is opened.
let g:ctags_regenerate=0
setlocal statusline+=%#GetTagname#%{GetTagName(line('.'))}%0*

" ͻ����ʾ��ǰ��
"set cursorline  

"����ħ�� 
set magic
"�Զ�͸��
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 234)
"͸����
map <M-1> <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize",1) <CR>
map <M-2> <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize",0) <CR>
map <M-w> :set modifiable<CR>
map <M-3> :set nomodifiable<CR>
:map <M-4> :sp<cr>""""�½����´���
if has('gui_running') && has("win32")
    map <M-5> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    imap <M-5> <ESC>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif
map <M-8> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 180) <CR>
map <M-9> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 230) <CR>
map <M-0> <ESC>:call libcallnr("vimtweak.dll", "SetAlpha", 255) <CR>

"�����ö�
map <M-6> <Esc>:call libcallnr("vimtweak.dll", "EnableTopMost", 1) <CR>
map <M-7> <Esc>:call libcallnr("vimtweak.dll", "EnableTopMost", 0) <CR>
"set guioptions+=b "���ˮƽ�������� �����ָ���˲����У� ��Ϊ�������һ��ˮƽ�������ͷǳ��б�Ҫ�ˡ�
set guioptions+=r
" ������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"�Զ������ź�����֮�����
:imap () ()<esc>i
:imap {} {}<esc>i
:imap <> <><esc>i
:imap [] []<esc>i
:imap "" ""<esc>i
:imap '' ''<esc>i

" ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ
set shortmess=atI

set backupcopy=yes " ���ñ���ʱ����ΪΪ����
set hlsearch "Highlight search things
vmap <C-c> "+y " ѡ��״̬�� Ctrl+c ����
let g:NeoComplCache_SmartCase = 1
let g:NeoComplCache_TagsAutoUpdate = 1
let g:NeoComplCache_EnableInfo = 1
let g:NeoComplCache_EnableCamelCaseCompletion = 1
let g:NeoComplCache_MinSyntaxLength = 3
let g:NeoComplCache_EnableSkipCompletion = 1
let g:NeoComplCache_SkipInputTime = '0.5'
" <TAB> completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0


" �ַ���������������Ŀ
set linespace=0

" �������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,$,@,%,#,-

set cmdheight=1 "�����еĸ߶�

"set hlsearch "Highlight search things

set ruler "Always show current position


" Set to auto read when a file is changed from the outside
set autoread

" Fast saving & exit
:map s :w!<cr>
:imap <ESC> <ESC>:w!<cr>
" :map q :q<cr>
:map qq :q!<cr>

"" ����C/C++���Եľ���������ʽ��windows���
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

set magic

"" ��ǿģʽ�е��������Զ���ɲ���
set wildmenu

"" ����ȫ�ֱ���
set viminfo+=!

set shellslash
let g:tex_flavor="tex"

"����������ʾ
set showcmd
"�򿪶���ģ��
set fo+=mB

"�ڴ���δ�����ֻ���ļ���ʱ�� ����ȷ��
set confirm

"��windows���������
set clipboard+=unnamed
set ts=4
set sw=4 "�����ߴ�Ϊ4���ո�

syn on                  " ���﷨����    
"set guifont=consolas:h10.9:cANSI " �������壬�������ƺ��ֺ�    
"set guifont=Courier_New_Bold:h12:cANSI
set guifont=Monaco:h10:cANSI  "����Ӣ������
set gfw=consolas:h11:cGB2312   "������������

set tabstop=4             " ����tab���Ŀ��    
set shiftwidth=4           " ����ʱ�м佻��ʹ��4���ո�    
set autoindent             " �Զ�����    
set backspace=2           " �����˸������    
set smartindent            " ���ܶ��뷽ʽ    
set cindent 
set ai!                   " �����Զ�����    
set nu!                   " ��ʾ�к�    
set showmatch            " ����ƥ��ģʽ�����Ƶ�����һ��������ʱ��ƥ����Ӧ���Ǹ�������    
set ruler                 " �ڱ༭�����У������½���ʾ���λ�õ�״̬��    
set incsearch              " ��ѯʱ�ǳ����㣬��Ҫ����book���ʣ������뵽/bʱ�����Զ��ҵ�    
                        " ��һ��b��ͷ�ĵ��ʣ������뵽/boʱ�����Զ��ҵ���һ��bo��ͷ��    
                        " ���ʣ��������ƣ����в���ʱ��ʹ�ô����û�����ҵ��𰸣�����    
                        " ��Ҫƥ��ĵ���ʱ�������ǻس�    


set vb t_vb=             " vim���б༭ʱ�����������󣬻ᷢ��һ��������������ȥ������ 

set smarttab

""��ɫ����
"colorscheme evening
""colorscheme grey2
colorscheme twilight  ""�����й���״̬��������
""colorscheme no_quarter
""colorscheme anotherdark
""colorscheme gemcolors 
"colorscheme oceandeep 
""colorscheme dante 

""�ļ������� ̫��
""let NERDTree_WinWidth = 10
""nnoremap <silent> <F5> :NERDTree<CR>
""let NERDTreeIgnore=['\.vim$', '\~$']

""CTags

""taglist �������
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
" ������������
let Tlist_Sort_Type = "name"
" ���ֻ��һ��buffer��kill����Ҳkill��buffer
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

""��ǩ
:map <M-c> :tabc<CR>
:map <M-`> :tabnext<CR>
:map <M-e>  :tabnew<CR>
"":map <M-c> ^w + ^r <CR>

""bufexplorer�ļ������
let g:bufExplorerDefaultHelp=1
let g:bufExplorerDetailedHelp=0
let g:bufExplorerSortBy='mru'
nmap <C-X> :BufExplorer<CR>
cd E:\My-Projects\MyWeb  ""���ù���Ŀ¼

""���
if has('gui_running') && has("win32")
    au GUIEnter * simalt ~x
endif


"ӳ��ESC��
inoremap jj <Esc>

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
:nmap <C-S> :WMToggle<cr>


""NERD Commenter�ļ�ע��
let NERDShutUp = 1

"�رչ����� F2���г���������
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

""javascript����
""���ո���۵�
"set foldcolumn=2
set foldlevel=100
set foldmethod=indent 
nnoremap tt @=((foldclosed(line('.')) < 0) ? 'zc':'zo') <CR>

" {{{ plugin - DoxygenToolkit.vim �Զ����ɸ���ע��
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
"" TOhtml ��� {{{
"" ���� runtime! syntax/2html.vim ʱ���� folding ����
let html_dynamic_folds = 1
"" �����кŴ� 0 ��ʼ
" let html_number_lines=0
"" �ָ�Ĭ��
" unlet html_number_lines
"" ʹ�� css
" let html_use_css=1
"" �����۵�
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


"ӳ�䷽���
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


"�ֵ�����
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


" {{{ plugin -yankring.vim �Ĵ������Ӳ���
:map <leader>y :YRShow<CR>
:map <leader>yc :YRClear<CR>
" }}}
"
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
"��ʾ����
"set title titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \Happy\ Hacking\-\-\Crazybaby

"Accoring to your selection and search
vnoremap  *  y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap  #  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
