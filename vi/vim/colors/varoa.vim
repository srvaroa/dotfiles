" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=2 sw=2
" Vim color file

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "varoa"

" set t_Co=256

" Normal should come first
hi Normal     guifg=Black  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=none   guibg=Cyan
hi Scrollbar  guifg=darkcyan guibg=cyan
hi Title    cterm=none ctermfg=brown gui=none guifg=brown
hi Comment    cterm=none ctermfg=darkmagenta gui=none guifg=darkmagenta
hi Constant   cterm=none ctermfg=darkred   gui=none guifg=darkgreen
hi Delimiter  ctermfg=white guifg=magenta
hi Error      term=reverse	ctermfg=yellow  ctermbg=red  guifg=yellow	guibg=black
hi Identifier cterm=none ctermfg=darkcyan    gui=none guifg=darkcyan
hi PreProc    cterm=none ctermfg=brown gui=none guifg=blue
hi Operator  cterm=none ctermfg=brown	     gui=none guifg=darkcyan	     
hi Special    cterm=bold ctermfg=lightblue    gui=none guifg=lightblue

" highlight special chars
hi SpecialKey		cterm=none ctermfg=darkgray ctermbg=none guifg=darkgray guibg=none 
" highlight current line
hi CursorLine   cterm=NONE ctermbg=black ctermfg=gray guibg=black guifg=white
hi CursorColumn cterm=NONE ctermbg=black ctermfg=gray guibg=black guifg=white

hi Statement  cterm=none ctermfg=brown	     gui=bold guifg=brown
" hi String cterm=none ctermfg=brown	     gui=bold guifg=brown
hi Todo  term=standout  ctermfg=black	ctermbg=brown  guifg=black  guibg=brown
hi Type      cterm=bold ctermfg=darkgreen	     gui=bold guifg=darkgreen

" popup menus
hi Pmenu cterm=none ctermfg=lightblue ctermbg=darkblue
hi PmenuSel cterm=bold ctermfg=white ctermbg=lightgreen

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi Directory  ctermfg=gray	   guifg=white
hi IncSearch  cterm=none	ctermfg=yellow	ctermbg=red	gui=none	guifg=yellow	guibg=red
hi LineNr     ctermfg=darkgrey	   guifg=darkgrey
hi MatchParen	  term=reverse  ctermfg=white ctermbg=blue	guibg=blue	guifg=white
hi Search		  term=reverse  ctermfg=white  ctermbg=red      guifg=white  guibg=Red

" msgs
hi ErrorMsg   ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
hi WarningMsg ctermfg=DarkRed	   guifg=Red

" diff
hi DiffAdd    ctermbg=green    guibg=green
hi DiffChange ctermbg=lightmagenta guibg=lightmagenta
hi DiffDelete ctermfg=red	   ctermbg=lightred gui=bold guifg=red guibg=lightred
hi DiffText   ctermbg=red	   cterm=bold gui=bold guibg=red

" fold
hi FoldColumn cterm=bold	ctermbg=black ctermfg=white guibg=gold guifg=blue
hi Folded			cterm=bold	ctermbg=black ctermfg=blue	guibg=gold guifg=blue

" status
hi StatusLine 	cterm=none	ctermbg=blue ctermfg=white guibg=blue guifg=white
hi StatusLineNC	cterm=none	ctermbg=darkgreen ctermfg=black  guibg=darkgreen guifg=black

" tabline
hi TabLine		  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=black gui=bold guifg=blue guibg=black
hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=blue ctermbg=black gui=bold guifg=blue guibg=black
hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue

" some for markdown
hi markdownHeadingRule cterm=none	ctermbg=black ctermfg=darkBlue guibg=black guifg=darkblue
hi markdownUrl cterm=bold	ctermbg=black ctermfg=magenta guibg=black guifg=magenta
hi markdownItalic cterm=bold	ctermbg=black ctermfg=yellow guibg=black guifg=yellow
hi markdownListMarker cterm=bold	ctermbg=black ctermfg=yellow guibg=black guifg=yellow
hi markdownOrderedListMarker cterm=bold	ctermbg=black ctermfg=brown guibg=black guifg=brown
hi markdownCodeBlock cterm=bold	ctermbg=black ctermfg=magenta guibg=black guifg=magenta

