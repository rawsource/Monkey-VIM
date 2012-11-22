set background=dark
highlight clear

if exists("syntax on")
	syntax reset
endif

let g:colors_name="maxide"

hi Normal guifg=#ffffff guibg=#01506b
hi Comment guifg=#b1e7eb guibg=NONE
hi Constant guifg=#40ffff guibg=NONE
hi String guifg=#00ff66 guibg=NONE
hi htmlTagName guifg=#ff0000 guibg=NONE
hi Identifier guifg=#40ffff guibg=NONE
hi Statement guifg=#ffff00 guibg=NONE
hi PreProc guifg=#ffff00 guibg=NONE

hi Type guifg=#ffffff guibg=NONE gui=bold
hi MatchParen guifg=#ff4040 guibg=#01506b gui=bold
hi WildMenu guifg=#ffffff guibg=#ff4040

hi Function guifg=#ffff00 guibg=NONE
hi Repeat guifg=#000000 guibg=NONE
hi Operator guifg=#ff0000 guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi Special guifg=#ffffff guibg=NONE

hi link character		Constant
hi link number			Constant
hi link boolean			Constant
hi link Float			Number
hi link Conditional		Repeat
hi link Label			Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link htmlTag			Special
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special
