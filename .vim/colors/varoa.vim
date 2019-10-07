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

let g:colors_name = "varoa"

hi Normal cterm=NONE ctermfg=246 ctermbg=NONE
hi Boolean cterm=NONE ctermfg=fg ctermbg=NONE
hi Character cterm=NONE ctermfg=fg ctermbg=NONE
hi Comment cterm=NONE ctermfg=240 ctermbg=NONE
hi Constant cterm=NONE ctermfg=white ctermbg=NONE
hi Conditional cterm=NONE ctermfg=fg ctermbg=NONE
hi CursorLine cterm=NONE ctermbg=233
hi ColorColumn cterm=NONE ctermbg=233 ctermfg=246
hi Directory cterm=NONE ctermfg=white ctermbg=NONE
hi File cterm=NONE ctermfg=white ctermbg=NONE
hi Function cterm=NONE ctermfg=29 ctermbg=NONE
hi Identifier cterm=NONE ctermfg=fg ctermbg=NONE
hi Include cterm=NONE ctermfg=fg ctermbg=NONE
hi Keyword cterm=NONE ctermfg=240
hi LineNr cterm=NONE ctermfg=238 ctermbg=233
hi MatchParen cterm=NONE ctermfg=red ctermbg=19
hi NonText cterm=NONE ctermfg=22 ctermbg=NONE
hi Number cterm=NONE ctermfg=28 ctermbg=NONE
hi PreProc cterm=NONE ctermfg=28 ctermbg=NONE
hi Special cterm=NONE ctermfg=white ctermbg=NONE
hi SpecialComment cterm=NONE ctermfg=250 ctermbg=NONE
hi SpecialKey gui=NONE cterm=NONE ctermfg=243 guifg=#767676 ctermbg=NONE guibg=NONE
hi Statement cterm=NONE ctermfg=white
hi String cterm=NONE ctermfg=fg ctermbg=NONE
hi Type cterm=NONE ctermfg=white ctermbg=NONE
hi VertSplit cterm=NONE ctermfg=238 ctermbg=233
hi Visual cterm=NONE ctermfg=yellow ctermbg=19
hi Todo cterm=NONE ctermfg=yellow ctermbg=NONE

" search
hi IncSearch cterm=NONE ctermfg=250 ctermbg=90
hi Search cterm=NONE ctermfg=142 ctermbg=19

" menu
hi PMenu cterm=NONE ctermfg=yellow ctermbg=4
hi PMenuSel cterm=NONE ctermfg=yellow ctermbg=19
" hi PMenuSbar cterm=NONE ctermfg=11 ctermbg=245
" hi PMenuThumb cterm=NONE ctermfg=yellow ctermbg=19

" Status
hi StatusLine cterm=NONE ctermfg=white ctermbg=24
hi StatusLineNC cterm=NONE ctermbg=white ctermbg=235

" Folds
hi Folded ctermfg=245 ctermbg=235 cterm=NONE

" diff
hi DiffAdd cterm=NONE ctermfg=white ctermbg=28
hi DiffChange cterm=NONE ctermfg=white ctermbg=4
hi DiffDelete cterm=NONE ctermfg=white ctermbg=160
hi DiffText cterm=NONE ctermfg=NONE ctermbg=NONE

" MARKDOWN
" ========
hi markdownHeadingRule cterm=NONE ctermbg=none ctermfg=28
hi markdownBold cterm=none ctermbg=NONE ctermfg=249
hi markdownItalic cterm=bold ctermbg=NONE ctermfg=249
hi markdownCodeBlock cterm=bold	ctermbg=NONE ctermfg=240
hi markdownUrl cterm=NONE	ctermbg=NONE ctermfg=22
hi markdownUrlDelimiter cterm=NONE ctermbg=NONE ctermfg=white
hi markdownUrlTitle cterm=NONE ctermbg=NONE ctermfg=NONE
hi markdownUrlTitleDelimiter cterm=NONE ctermbg=NONE ctermfg=white
hi markdownLinkText cterm=NONE ctermbg=NONE ctermfg=white
hi markdownLinkDelimiter cterm=NONE ctermbg=NONE ctermfg=white
" hi markdownListMarker cterm=bold	ctermbg=NONE ctermfg=yellow guibg=black guifg=yellow
" hi markdownOrderedListMarker cterm=bold	ctermbg=none ctermfg=brown guibg=black guifg=brown

" GIT COMMIT
" ==========
hi gitcommitSummary cterm=bold ctermbg=black ctermfg=yellow
" hi gitcommitComment -unset-
" hi gitcommitUntracked	-unset-
" hi gitcommitDiscarded	-unset-
" hi gitcommitSelected	-unset-
" hi gitcommitUnmerged	-unset-
" hi gitcommitOnBranch	-unset-
" hi gitcommitBranch	-unset-
" hi gitcommitNoBranch	-unset-
" hi gitcommitDiscardedType-unset-
" hi gitcommitSelectedType-unset-
" hi gitcommitUnmergedType-unset-
" hi gitcommitType	-unset-
" hi gitcommitNoChanges	-unset-
" hi gitcommitHeader	-unset-
" hi gitcommitUntrackedFile-unset-
" hi gitcommitDiscardedFile-unset-
" hi gitcommitSelectedFile-unset-
" hi gitcommitUnmergedFile-unset-
" hi gitcommitFile	-unset-
" hi gitcommitDiscardedArrow-unset-
" hi gitcommitSelectedArrow-unset-
" hi gitcommitUnmergedArrow-unset-
" hi gitcommitArrow	-unset-
" hi gitcommitOverflow	-unset-
" hi gitcommitBlank	-unset-
