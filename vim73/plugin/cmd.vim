if !has('python') || exists('g:vim_cmd_loaded')
finish
endif

let g:svn_cmd_path = $VIM.'\vim73\plugin\cmd.py'

function! RUN_CMD()
        let Comment = input("请输入要执行的命令:")
        if strlen(Comment) > 0
            python import sys
            exe 'python sys.argv = ["cmd.exe /c '.substitute(substitute(Comment, '\\', '\\\\', "g"), '"', '\\"', "g").'"]'
	 "  exe 'python sys.argv = ["curl dict://dict.org/d:<cword>"]'
        else
            return
        endif
        exe 'pyf '.g:svn_cmd_path
endfunction


if !exists('g:vim_cmd_loaded')
        let g:vim_cmd_loaded = 1
       " nmap ,xx <Esc>:call RUN_CMD()<CR>
endif