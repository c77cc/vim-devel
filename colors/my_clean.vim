"
" Cleanroom Vim Colour Scheme
"
" Author:  Vy-Shane Sin Fat <shane@node.mu>
" Version: 1.0
"

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="my_clean"


" Chrome
hi FoldColumn    guifg=#aaaaaa  guibg=#f8f8f8  gui=bold
hi SignColumn    guifg=#666688  guibg=#f8f8f8
hi LineNr        guifg=#bebebe  guibg=#f8f8f8
hi CursorLine                   guibg=#f1faff
hi ColorColumn                  guibg=#fafafa
hi StatusLine    guifg=#555555  guibg=#e3e3e3  gui=none
hi StatusLineNC  guifg=#888888  guibg=#eeeeee  gui=none
hi VertSplit     guifg=#ededed  guibg=#ededed  gui=none
hi ModeMsg       guifg=black    guibg=#bbddff  gui=none
hi MoreMsg       guifg=black    guibg=#ddeeff  gui=none
hi Question      guifg=black    guibg=#edf5ff  gui=none
hi WarningMsg    guifg=black    guibg=#ffdddd  gui=none
hi ErrorMsg      guifg=black    guibg=#ffbbbb  gui=none
hi Pmenu         guifg=#60656f  guibg=#f0f5ff  gui=none
hi PmenuSel      guifg=white    guibg=#3585ef  gui=bold
hi PmenuSbar     guifg=#d0d5dd  guibg=#e0e5ee  gui=bold
hi PmenuThumb    guifg=#e0e5ee  guibg=#c0c5dd  gui=bold
hi Cursor                       guibg=#FF7311
hi Folded        guifg=#999999  guibg=#fafafa


" General text
hi Normal        guifg=black  guibg=white
hi Title         guifg=black    guibg=white
hi Search                       guibg=#fcfcaa  gui=none
hi IncSearch                    guibg=#ffff33  gui=bold
hi MatchParen                   guibg=#ccddff  gui=none
hi Visual                       guibg=#ddeeff
hi Error         guifg=#bb3355  guibg=white    gui=none
hi SpellBad      guisp=#ff7777
hi SpellCap      guisp=#ffaaaa
hi SpellLocal    guisp=#ffaaaa
hi SpellRare     guisp=#ffaaaa
hi NonText       guifg=#aaaaaa  guibg=#f8f8f8  gui=none
hi SpecialKey    guifg=#aaaaaa  guibg=#f8f8f8  gui=none

" General code
"hi Comment       guifg=#667799  gui=none
hi Comment       guifg=#9a9a9a  gui=none
hi Todo          guifg=#667799  guibg=#eeeeff  gui=italic
hi Operator      guifg=#111111  gui=none
hi Identifier    guifg=#000000  gui=none
hi Statement     guifg=blue     gui=none
hi Type          guifg=blue     gui=none
hi Constant      guifg=#d58e25  gui=none
hi Conditional   guifg=#4477bb  gui=none
hi Delimiter     guifg=#4477bb  gui=none
hi Define        guifg=#4477bb  gui=bold
hi PreProc       guifg=blue     gui=none
hi Special       guifg=#000000  gui=none
hi Keyword       guifg=#005070  gui=none
hi Common        guifg=#000000  gui=none
hi methodVar     guifg=#049a04  gui=none
hi phpVar     guifg=#7d4821  gui=none
"hi Test          guifg=red      gui=bold
hi Directory     guifg=#6699dd
hi link Function           Normal
hi link Character          Constant
hi link String             Constant
hi link Boolean            Constant
hi link Number             Constant
hi link Float              Number
hi link Label              Constant
hi link Repeat             Conditional
hi link Exception          Conditional
hi link Include            Normal
hi link Macro              PreProc
hi link PreCondit          PreProc
hi link StorageClass       Type
hi link Structure          Define
hi link Typedef            Type
hi link Tag                Special
hi link SpecialChar        Special
hi link SpecialComment     Special
hi link Debug              Special

" HTML code
hi link htmlLink           Constant

" PHP code
hi link phpMemberselector Common 
hi link phpMethodsVar Common 
hi link phpFunctions  Statement
hi link phpVarSelector phpVar 
hi link phpIdentifier phpVar 
hi link phpBoolean  Statement

" Diff
hi DiffAdd       guibg=#ecffec  gui=none
hi DiffChange    guibg=#ffffe6  gui=none
hi DiffDelete    guifg=#fff1f1  guibg=#fff1f1  gui=none
hi DiffText      guibg=#ffffbb  gui=none

" Vim-specific
hi link vimOption          Constant
hi link vimEnvvar          Constant
hi link vimHiattrib        Constant
hi link vimFbBgAttrib      Constant
