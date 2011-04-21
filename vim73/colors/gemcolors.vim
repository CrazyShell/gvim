" Vim color file
" Maintainer: Jason Lee <huacnlee@gmail.com>
" Website: http://huacnlee.com
" Last Change: 2009/11/20
"     version: 1.0
" This color scheme uses a light background.


set background=light
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "gemcolors"

" Normal
hi Normal       guifg=#F8F8F8 guibg=#141414
" Search
hi IncSearch    gui=UNDERLINE guifg=#F8F8F8 guibg=#4A9400
hi Search       gui=NONE guifg=#F8F8F8 guibg=#4A9400

" Messages
hi ErrorMsg     gui=NONE guifg=#ff0000 guibg=#ffe4e4
hi WarningMsg   gui=NONE guifg=#ff0000 guibg=#ffe4e4
hi ModeMsg      gui=NONE guifg=#dd0000 guibg=NONE
hi MoreMsg      gui=NONE guifg=#009070 guibg=NONE
hi Question     gui=NONE guifg=#ff7700 guibg=NONE

" Split area
hi StatusLine   gui=NONE guifg=#F8F8F8 guibg=#2F2F2F
hi StatusLineNC gui=NONE guifg=#a4a4a4 guibg=#2F2F2F
hi VertSplit    gui=NONE guifg=#F8F8F8 guibg=#2F2F2F
hi WildMenu     gui=NONE guifg=#F8F8F8 guibg=#dd0000

" Diff
hi DiffText     gui=NONE guifg=#e04040 guibg=#ffd8d8
hi DiffChange   gui=NONE guifg=#408040 guibg=#d0f0d0
hi DiffDelete   gui=NONE guifg=#4848ff guibg=#ffd0ff
hi DiffAdd      gui=NONE guifg=#4848ff guibg=#ffd0ff

" Cursor
hi Cursor       gui=NONE guifg=#F8F8F8 guibg=#C03030
hi CursorLine   guifg=#F9F9F9 guibg=#C03030
hi lCursor      gui=NONE guifg=#F8F8F8 guibg=#C03030
hi CursorIM     gui=NONE guifg=#F8F8F8 guibg=#C03030

" Fold
hi Folded       gui=NONE guifg=#F9F9F9 guibg=#6C1B1B
hi FoldColumn   gui=NONE guifg=#40a098 guibg=#f0f0f0

" Other
hi Directory    gui=NONE guifg=#9B703F guibg=NONE
hi LineNr       gui=NONE guifg=#acacac guibg=NONE
hi NonText      gui=NONE guifg=#00a0c0 guibg=NONE
hi SpecialKey   gui=NONE guifg=#4040ff guibg=NONE
hi Title        gui=NONE guifg=#F8F8F8 guibg=NONE
hi Visual       gui=NONE guifg=#FFFFFF guibg=#C03030
" hi VisualNOS    gui=NONE guifg=#484848 guibg=#e0e0e0

" Syntax group
hi Comment      gui=NONE guifg=#494949 guibg=NONE
hi Constant     gui=NONE guifg=#8f9d6a guibg=NONE
hi Number       gui=NONE guifg=#C03030 guibg=NONE
hi Identifier   gui=NONE guifg=#8f9d6a guibg=NONE
hi Error        gui=NONE guifg=#ffffff guibg=#dd0000
hi Ignore       gui=NONE guifg=#F8F8F8 guibg=NONE
hi PreProc      gui=NONE guifg=#CDA869 guibg=NONE
hi Special      gui=NONE guifg=#4a9400 guibg=NONE
hi Statement    gui=NONE guifg=#ff7700 guibg=NONE
hi Todo         gui=UNDERLINE guifg=#FFFFFF guibg=#9b703f
hi Type         gui=NONE guifg=#F9EE98 guibg=NONE
hi Underlined   gui=UNDERLINE guifg=fg guibg=NONE
hi Include      gui=NONE guifg=#dd0000 guibg=NONE 
hi Function     gui=NONE guifg=#9B703F guibg=NONE
hi String       gui=NONE guifg=#C03030 

hi Pmenu          guifg=#E3CEA9         guibg=#494949
hi PmenuSel       guifg=#000000         guibg=#9B703F

hi xmlTag                    guifg=#E8BF6A ctermfg=179
hi xmlTagName                guifg=#E8BF6A ctermfg=179
hi xmlEndTag                 guifg=#E8BF6A ctermfg=179
hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag




"hi StatuslineBufNr     cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#840c0c guifg=#ffffff
"hi StatuslineFlag      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#bc5b4c guifg=#ffffff
hi StatuslinePath      cterm=none    ctermfg=white  ctermbg=green   gui=none guibg=#303030 guifg=#DD2642
"hi StatuslineFileName  cterm=none    ctermfg=white  ctermbg=blue    gui=none guibg=#d59159 guifg=black
"hi StatuslineFileEnc   cterm=none    ctermfg=white  ctermbg=yellow  gui=none guibg=#ffff77 guifg=black
hi StatuslineFileType  cterm=bold    ctermbg=white  ctermfg=black   gui=none guibg=#acff84 guifg=black
"hi StatuslineTermEnc   cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#77cf77 guifg=black
"hi StatuslineChar      cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#66b06f guifg=black
"hi StatuslineSyn       cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#60af9f guifg=black
"hi StatuslineRealSyn   cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#5881b7 guifg=black
"hi StatusLine          cterm=none    ctermbg=white  ctermfg=yellow  gui=none guibg=#3f4d77 guifg=#729eb0 
"hi StatuslineTime      cterm=none    ctermfg=black  ctermbg=cyan    gui=none guibg=#3a406e guifg=#000000
"hi StatuslineSomething cterm=reverse ctermfg=white  ctermbg=darkred gui=none guibg=#c0c0f0 guifg=black
"hi StatusLineNC                                                     gui=none guibg=#304050 guifg=#70a0a0 


