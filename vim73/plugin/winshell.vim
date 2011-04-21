"主要目标：
"
"    在vim中利用everything的能力搜索文件，定位文件和执行文件
"
"    命令（在命令模式输入searchfile "然后后面跟要搜索的文件名称，everything支持的搜索模式这里面都支持）：
"
"     1.在指定行按 x 调用默认的程序执行
"     2.按 t 在命令行定位到这个文件的目录
"     3.按 e 使用资源管理器定位到这个文件
"     4.回车按缓冲区打开该文件
"    
"安装要求
"    vim编译时加入了python支持
"    python 2.5支持sqlite3的版本 可输入:version查看是否支持
"
"作者：zjp
"电子邮件:alex8224@gmail.com
"

if exists("g:winshell")
    finish
else
    let g:winshell=1
endif

if !has("python")
	echohl ErrorMsg | echo "您的vim不支持python! winshell插件载入失败!" | echohl None
	finish
endif
"
"调用特定的关联程序打开指定的文件
function! ShellExecute()
let b:fileLink=iconv(getline("."),"utf-8","gbk")
python << EOF
import vim
import win32api,win32con
fullPath=vim.eval("b:fileLink")
try:
	rCode=win32api.ShellExecute(0,"open",fullPath,None,None,win32con.SW_SHOWNA)
	vim.command("call AddsearchKey(g:searchPattern)")
except:
	vim.command("echohl ErrorMsg| echo \"没有个设置关联的程序设置用于打开此文件!\" | echohl None")
	
EOF
endfunction
"
"在新的线程里面执行程序
function! ExecuteCmdNoResult(cmdText)
let b:cmdName=a:cmdText
python << EOF
import vim
import threading
import subprocess

class ExecuteThread(threading.Thread):
    def __init__(self,cmdline):
        threading.Thread.__init__(self)
	self.cmdLine=cmdline;
    def run(self):
	subprocess.Popen(self.cmdLine,shell=True)    

ExecuteThread(vim.eval("b:cmdName").replace("cmd","start cmd").replace("python","start python")).start()

EOF

endfunction

" 通用命令执行函数
function! ExecuteCmd(cmdText)
call FindBuffer()
let b:cmdName=a:cmdText
python << EOF
import vim
import subprocess
p=subprocess.Popen(vim.eval("b:cmdName"),shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
out,err=p.communicate()

if p.returncode==0:
		response=out.replace("\r","")
		lines=response.split("\n")
		for line in lines:
				vim.current.buffer.append(line.decode("gbk").encode("utf-8"))
else:
		response=err.replace("\r","")
		lines=response.split("\n")
		for line in lines:
				vim.current.buffer.append(line.decode("gbk").encode("utf-8"))

EOF

setlocal nomodifiable
endfunction

function! FindBuffer()
if !bufloaded("cmdShell")
	execute "bo sp cmdShell"
	while winheight(0)>10
		execute "normal \<c-w>-"
	endwhile
else
	while 1
		execute "normal \<c-w>w"
		if bufname("%") == "cmdShell"
			while winheight(0)<10
				execute "normal \<c-w>+"
			endwhile
			break
		endif
	endwhile
endif

setlocal modifiable
setlocal buftype=nofile
setlocal bufhidden=delete
setlocal noswapfile
setlocal nowrap
setlocal nobuflisted
"
" Use fixed height for the MRU window
setlocal winfixheight
"
" Line continuation used here
let s:cpo_save = &cpo
set cpo&vim

" Setup the cpoptions properly for the maps to work
let old_cpoptions = &cpoptions
set cpoptions&vim

" Create mappings to select and edit a file from the MRU list
" move to _vimrc
 nnoremap <buffer> <silent> <CR> :call OpenFileInVim()<cr>
 nnoremap <buffer> <silent> x :call ShellExecute()<cr>
 nnoremap <buffer> <silent> e :call OpenFileInExplorer()<cr>
 nnoremap <buffer> <silent> q :bd!<cr>
 nnoremap <buffer> <silent> c :call ClearBuffer()<cr>
 nnoremap <buffer> <silent> t :call ToDirInDos()<cr>

" Restore the previous cpoptions settings
let &cpoptions = old_cpoptions
  
endfunction

"从vim中访问everything中的功能，实现文件的快速搜索
function! SearchFile(filePattern)
	let g:pyeverything="D:\\Vim\\vim73\\search.py"
	let g:searchPattern=a:filePattern
	execute "CmdShell python ".g:pyeverything." ".iconv(a:filePattern,"utf-8","gbk")
endfunction

"在vim缓冲区中打开当前文件
function! OpenFileInVim()
	let g:currselectfile=getline(".")
	execute "normal \<c-w>k"
	let g:currselectfile
	execute "e! ".g:currselectfile
endfunction

"在资源管理器中打开vim选中的文件
function! OpenFileInExplorer()
	let b:currline=iconv(getline("."),"utf-8","gbk")
	execute "CmdShell explorer /select,".b:currline
endfunction

"删除临时缓冲区的内容
function! ClearBuffer()
	if bufname("%") == "cmdShell"
		setlocal modifiable
		execute "normal ggvG$d\<ESC>"
		setlocal nomodifiable
	endif
endfunction

"在dos中进入某个指定的目录
function! ToDirInDos()
	let b:tmpfilename=iconv(getline("."),"utf-8","gbk")
	if isdirectory(b:tmpfilename)
		execute "Cmd cmd.exe /K cd /d  ".b:tmpfilename
	else
		let patharray=split(getline("."),"\\")
		let fullpath=''
		for aIndex in range(len(patharray)-1)
			let fullpath=fullpath.patharray[aIndex]."\\"
		endfor
		execute "Cmd cmd.exe /K cd /d  ".iconv(fullpath,"utf-8","gbk")
	endif
endfunction

"反编译选中的CLASS文件到当前缓冲区
function! Jad()
	let g:jadpath="D:\\XJad\\jad.exe -p -s .java "
        let currfile=expand("%")
	execute "!".g:jadpath.'"'.iconv(currfile,"utf-8","gbk").'"'." >c:\\_tmp.java"
	execute "bd!"
        execute "e c:\\_tmp.java"
	execute "set ft=java"
endfunction

command! -nargs=1  Cmd :call ExecuteCmdNoResult(<q-args>)
command! -nargs=1  -complete=customlist,AutoCmds CmdShell :call ExecuteCmd(<q-args>)
command! -nargs=1  -complete=customlist,Searchcomplete Searchfile :call SearchFile(<q-args>)
