	" local syntax file - set colors on a per-machine basis:
	" vim: tw=0 ts=4 sw=4
	" Vim color file
	" Maintainer:	Ron Aaron <ron@ronware.org>
	" Last Change:	2003 May 02

	set background=dark
	hi clear
	if exists("syntax_on")
	  syntax reset
	endif
	let g:colors_name = "zzelflord"	


"
" AVAILABLE ANSI COLORS IN iTerm
" 
" 0 =     Black                     - iTerm-ref: Black, normal
" 1 =     DarkBlue                  - iTerm-ref: Blue, normal
" 2 =     DarkGreen                 - iTerm-ref: Green, normal
" 3 =     DarkCyan                  - iTerm-ref: Cyan, normal 
" 4 =     DarkRed                   - iTerm-ref: Red, normal
" 5 =     DarkMagenta               - iTerm-ref: Magenta, normal
" 6 =     Brown, DarkYellow         - iTerm-ref: ??
" 7 =     Grey                      - iTerm-ref: ??
" 8 =     DarkGrey                  - iTerm-ref: ??
" 9 =     Blue, LightBlue           - iTerm-ref: Blue, bright
" 10 =    Green, LightGreen         - iTerm-ref: Green, bright
" 11 =    Cyan, LightCyan           - iTerm-ref: Cyan, bright
" 12 =    Red, LightRed             - iTerm-ref: Red, bright
" 13 =    Magenta, LightMagenta     - iTerm-ref: Magenta, bright
" 14 =    Yellow, LightYellow       - iTerm-ref: Yellow, bright
" 15 =    White                     - iTerm-ref: White, bright 
"
" MY COLOR PALETTE
" 
" BLUES
" Shiny cyan          = DarkCyan              = #59c0e3 (Variables)
" Dull cyan           = Cyan                  = #2D8DA1
" Faded cyan          = Blue                  = #537178  (Comments)
" Strong faded cyan   = LightBlue             = #79a2ab (Strong comment)
" Mild cyan           = DarkMagenta           = #B1E2F2 (Conditional)
"
"
"None-column
"hi GROUPNAME	term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=NONE		gui=NONE		guifg=NONE			guibg=NONE
hi Normal		term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=yellow		gui=NONE		guifg=cyan			guibg=black
hi Comment		term=bold		cterm=NONE			ctermbg=NONE		ctermfg=Blue	  gui=NONE		guifg=#80a0ff		guibg=NONE
hi Constant		term=underline	cterm=NONE			ctermbg=NONE		ctermfg=white	  gui=NONE		guifg=Magenta		guibg=NONE
hi Special		term=bold		cterm=NONE			ctermbg=NONE		ctermfg=DarkMagenta	gui=NONE		guifg=Red			guibg=NONE
hi Identifier 	term=underline	cterm=bold			ctermbg=NONE		ctermfg=yellow      gui=NONE		guifg=#40ffff		guibg=NONE
hi Statement 	term=bold		cterm=NONE			ctermbg=NONE		ctermfg=white 		gui=bold		guifg=#aa4444		guibg=NONE
hi PreProc		term=underline	cterm=NONE			ctermbg=NONE		ctermfg=LightBlue	gui=NONE		guifg=#ff80ff		guibg=NONE
hi Type			term=underline	cterm=NONE			ctermbg=NONE		ctermfg=LightBlue	gui=bold		guifg=#60ff60 		guibg=NONE
hi Function		term=bold		cterm=NONE			ctermbg=NONE		ctermfg=White 		gui=NONE		guifg=White			guibg=NONE
hi Repeat		term=underline	cterm=NONE			ctermbg=NONE		ctermfg=White		gui=NONE		guifg=white			guibg=NONE
hi Operator		term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=yellow			gui=NONE		guifg=Red			guibg=NONE
hi Ignore		term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=black		gui=NONE		guifg=bg			guibg=NONE
hi Error		term=reverse 	cterm=NONE			ctermbg=red 		ctermfg=White 		gui=NONE		guifg=White			guibg=Red 
hi Todo			term=standout 	cterm=NONE			ctermbg=NONE 		ctermfg=DarkCyan		gui=NONE		guifg=Blue 			guibg=NONE
hi LineNr	    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=blue		gui=NONE		guifg=NONE			guibg=NONE

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Normal
hi link SpecialComment Special
hi link Debug		Special

" PHP-stylings
hi link phpInterfaces Normal
hi phpComment	    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=blue	gui=NONE		guifg=NONE			guibg=NONE
hi phpDocTags	    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=DarkBlue		gui=NONE		guifg=NONE			guibg=NONE
hi phpStructure	    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=DarkCyan		gui=NONE		guifg=NONE			guibg=NONE
hi phpType		    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=white		gui=NONE		guifg=NONE			guibg=NONE
hi phpConditional	term=NONE	    cterm=NONE			ctermbg=NONE		ctermfg=DarkMagenta		gui=NONE		guifg=NONE			guibg=NONE
hi phpStorageClass	term=NONE	    cterm=NONE			ctermbg=NONE		ctermfg=cyan		gui=NONE		guifg=NONE			guibg=NONE
hi phpDefine	    term=NONE	    cterm=NONE			ctermbg=NONE		ctermfg=darkcyan		gui=NONE		guifg=NONE			guibg=NONE
hi phpIdentifier    term=NONE	    cterm=NONE			ctermbg=NONE		ctermfg=yellow		gui=NONE		guifg=NONE			guibg=NONE

" Python-stylings
hi link pythonInterfaces Normal
hi pythonStatement	    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=DarkCyan		gui=NONE		guifg=NONE			guibg=NONE
hi pythonFunction    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=Yellow    gui=NONE		guifg=NONE			guibg=NONE
hi pythonAttribute    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=Yellow    gui=NONE		guifg=NONE			guibg=NONE
hi pythonBuiltin		    term=NONE		cterm=NONE			ctermbg=NONE		ctermfg=Cyan    gui=NONE		guifg=NONE			guibg=NONE
hi phpConditional	term=NONE	    cterm=NONE			ctermbg=NONE		ctermfg=DarkMagenta		gui=NONE		guifg=NONE			guibg=NONE
hi phpStorageClass	term=NONE	    cterm=NONE			ctermbg=NONE		ctermfg=cyan		gui=NONE		guifg=NONE			guibg=NONE
hi phpDefine	    term=NONE	    cterm=NONE			ctermbg=NONE		ctermfg=darkcyan		gui=NONE		guifg=NONE			guibg=NONE
hi phpIdentifier    term=NONE	    cterm=NONE			ctermbg=NONE		ctermfg=yellow		gui=NONE		guifg=NONE			guibg=NONE
