" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "terminal"

hi Comment ctermfg=Green guifg=DarkGreen
hi Normal guifg=black guibg=white
hi Constant term=underline ctermfg=Magenta guifg=Magenta
hi Special ctermfg=Magenta guifg=Magenta
hi Identifier term=underline ctermfg=Blue guifg=Blue
hi Statement ctermfg=Blue guifg=Blue
hi PreProc term=underline ctermfg=Magenta guifg=Purple
hi Type term=underline ctermfg=Blue guifg=Blue
hi Search ctermfg=Black ctermbg=Blue
"hi Search ctermfg=White ctermbg=DarkBlue guifg=Blue 
hi Visual ctermbg=DarkRed ctermfg=Blue
"hi VisualNOS guifg=#ffffff guibg=#007fff		gui=reverse,underline	ctermfg=lightblue ctermbg=fg cterm=reverse,underline

hi Tag ctermfg=DarkGreen guifg=DarkGreen
hi Error term=reverse ctermfg=15 ctermbg=9 guibg=Red guifg=White
hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
hi  StatusLine term=bold,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=NONE guifg=Yellow guibg=DarkGray
hi! link MoreMsg Comment
hi! link ErrorMsg Visual
hi! link WarningMsg ErrorMsg
hi! link Question Comment
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label		Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
