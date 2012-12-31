" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=2 sw=2
" Vim color file
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim?file=Xterm-color-table.png
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "varoa"

hi Normal cterm=NONE ctermfg=246 ctermbg=none
hi Boolean cterm=NONE ctermfg=28 ctermbg=none
hi Character cterm=NONE ctermfg=28 ctermbg=none
hi Comment cterm=NONE ctermfg=8 ctermbg=none
hi Constant cterm=NONE ctermfg=white ctermbg=none
hi Directory cterm=NONE ctermfg=white ctermbg=NONE
hi File cterm=NONE ctermfg=white ctermbg=NONE
hi Function cterm=NONE ctermfg=white ctermbg=none
hi Identifier cterm=NONE ctermfg=white ctermbg=none
hi Include cterm=NONE ctermfg=fg ctermbg=none
hi Keyword cterm=NONE ctermfg=fg
hi LineNr cterm=NONE ctermfg=238 ctermbg=233
hi MatchParen cterm=NONE ctermfg=yellow ctermbg=19
hi NonText cterm=NONE ctermfg=22 ctermbg=none
hi Number cterm=NONE ctermfg=28 ctermbg=none
hi Preproc cterm=NONE ctermfg=28 ctermbg=NONE
hi SpecialComment cterm=NONE ctermfg=red ctermbg=none
hi Special cterm=NONE ctermfg=white ctermbg=none
hi Statement cterm=NONE ctermfg=fg
hi String cterm=NONE ctermfg=28 ctermbg=none
hi Type cterm=NONE ctermfg=white ctermbg=NONE
hi VertSplit cterm=NONE ctermfg=238 ctermbg=233
hi Visual cterm=NONE ctermfg=yellow ctermbg=19

" search
hi IncSearch cterm=NONE ctermfg=17 ctermbg=166
hi Search cterm=NONE ctermfg=17 ctermbg=yellow

" menu
hi PMenu cterm=NONE ctermfg=yellow ctermbg=4
hi PMenuSel cterm=NONE ctermfg=yellow ctermbg=19
" hi PMenuSbar cterm=NONE ctermfg=11 ctermbg=245
" hi PMenuThumb cterm=NONE ctermfg=yellow ctermbg=19

" Status
hi StatusLine cterm=NONE ctermfg=white ctermbg=4
hi StatusLineNC cterm=NONE ctermbg=white ctermbg=8

" Folds
hi Folded ctermfg=245 ctermbg=235 cterm=NONE

" diff
55	  	
hi DiffAdd cterm=none ctermfg=white ctermbg=28
hi DiffChange cterm=none ctermfg=white ctermbg=4
hi DiffDelete cterm=none ctermfg=white ctermbg=160
hi DiffText cterm=none ctermfg=none ctermbg=none

" some for markdown
" hi markdownHeadingRule cterm=none	ctermbg=black ctermfg=darkBlue guibg=black guifg=darkblue
" hi markdownUrl cterm=bold	ctermbg=black ctermfg=magenta guibg=black guifg=magenta
" hi markdownItalic cterm=bold	ctermbg=black ctermfg=yellow guibg=black guifg=yellow
" hi markdownListMarker cterm=bold	ctermbg=black ctermfg=yellow guibg=black guifg=yellow
" hi markdownOrderedListMarker cterm=bold	ctermbg=black ctermfg=brown guibg=black guifg=brown
" hi markdownCodeBlock cterm=bold	ctermbg=black ctermfg=magenta guibg=black guifg=magenta
