   "" The following two functions are the examples of <Hacking Vim>, Chapter 2
   "" This example is based on one from the Vim help system, and shows how to make
 "" a simple function that will show the info from all the available variables.
   " function! SimpleBalloon()
   "    return 'Cursor is at line/column: ' . v:beval_lnum .
   "     \'/' . v:beval_col .
  "     \ ' in file ' .  bufname(v:beval_bufnr) .
 "     \ '. Word under cursor is: "' . v:beval_text . '"'
   " endfunction
  " set balloonexpr=SimpleBalloon()
  " set ballooneval
 
  "" a more advanced example, to activate it, just turn on the spell check:
   "" :set spell
   function! FoldSpellBalloon()
     let foldStart = foldclosed(v:beval_lnum )
     let foldEnd   = foldclosedend(v:beval_lnum)
    let lines = []
    " Detect if we are in a fold
     if foldStart < 0
      " Detect if we are on a misspelled word
       let lines = spellsuggest( spellbadword(v:beval_text)[ 0 ], 5, 0 )
   else
     " we are in a fold
      let numLines = foldEnd - foldStart + 1
     " if we have too many lines in fold, show only the first 14
     " and the last 14 lines
    if ( numLines > 31 )
        let lines = getline( foldStart, foldStart + 14 )
       let lines += [ '-- Snipped ' . ( numLines - 30 ) . ' lines --' ]
       let lines += getline( foldEnd - 14, foldEnd )
     else
        "less than 30 lines, lets show all of them
       let lines = getline( foldStart, foldEnd )
     endif
  endif
  " return result
   return join( lines, has( "balloon_multiline" ) ? "\n" : " " )
   endfunction
set balloonexpr=FoldSpellBalloon()
   set ballooneval
  set balloondelay=100
