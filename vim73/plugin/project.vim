" Lookup File  
" Author: happyvim  
" Function: ProjectTagUpdateLookupFile  
" Args:  
" Description: regenerate lookupfile tags  
function! ProjectTagUpdateLookupFile()  
  echo "generate lookupfile.tag"  
  if filereadable(g:project_lookup_file)  
    call delete(g:project_lookup_file)  
  endif  
  execute "cd " .  g:this_project_base_dir  
  let l:lookup_tags = ["!_TAG_FILE_SORTED   2   \/2=foldcase\/"]   
  
  if has("win32")  
    let l:this_project_base_dir = substitute(g:this_project_base_dir, "/", "\\", "g") . "\\"  
  else  
    let l:this_project_base_dir = g:this_project_base_dir  
  endif  
  "let l:lookup_tags_file_string = system(g:project_find_program . " " . l:this_project_base_dir . " " . g:project_find_param)  
  let l:lookup_tags_file_string = system(g:project_find_program . " " . g:project_find_param)  
  let l:lookup_tags_file_list = split(l:lookup_tags_file_string, '\n')  
  let l:lookup_tags_file_list = sort(l:lookup_tags_file_list)  
  
  let l:item = ""  
  let l:count = 0   
  for l:item in l:lookup_tags_file_list  
    let l:item = fnamemodify(l:item, ':t') . "\t" . l:item . "\t" . "1"  
    let l:lookup_tags_file_list[l:count] = l:item  
    let l:count = l:count + 1  
  endfor   
  call extend(l:lookup_tags, l:lookup_tags_file_list)  
  call writefile(l:lookup_tags, g:project_lookup_file)  
  echo "generate lookupfile tag done"  
endfunction  
