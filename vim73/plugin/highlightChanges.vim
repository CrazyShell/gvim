"Create a text highlighting style that always stands out...
highlight STANDOUT term=bold cterm=bold gui=bold

"List of troublesome words...
let s:words = [
             \ "it's",  "its",
             \ "your",  "you're",
             \ "were",  "we're",   "where",
             \ "their", "they're", "there",
             \ "to",    "too",     "two"
             \ ]

"Build a Vim command to match troublesome words...
let s:words_matcher
\ = 'match :re /\c\<\(' . join(s:words, '\|') . '\)\>/'

"Toggle word checking on or off...
function! Highlight_change ()
   "Toggle the flag (or set it if it doesn't yet exist)...

   let w:check_words = exists('w:check_words') ? !w:check_words : 1

   "Turn match mechanism on/off, according to new state of flag...
   if w:check_words
      exec s:words_matcher
   else
      match none
   endif
endfunction


				
if !exists('g:highlight_change')
        let g:Highlight_change=1
		map <C-c> :call Highlight_change()<CR>
endif
