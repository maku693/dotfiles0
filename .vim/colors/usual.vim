set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="usual"

" Vim UI
hi Cursor        ctermfg=15    ctermbg=4
hi Cursorline    ctermbg=7     ctermfg=NONE  cterm=NONE
hi MatchParen    ctermfg=NONE  ctermbg=NONE  cterm=underline
hi Pmenu         ctermfg=15    ctermbg=8
hi PmenuThumb    ctermbg=7
hi PmenuSBar     ctermbg=8
hi PmenuSel      ctermfg=15    ctermbg=12
hi ColorColumn   ctermbg=7
hi SpellBad      ctermfg=9     ctermbg=NONE  cterm=underline
hi SpellCap      ctermfg=10    ctermbg=NONE  cterm=underline
hi SpellRare     ctermfg=11    ctermbg=NONE  cterm=underline
hi SpellLocal    ctermfg=13    ctermbg=NONE  cterm=underline
hi NonText       ctermfg=7
hi LineNr        ctermfg=8     ctermbg=NONE
hi CursorLineNr  ctermfg=12    ctermbg=NONE
hi ModeMsg       ctermfg=3     ctermbg=NONE  cterm=bold
hi Visual        ctermfg=NONE  ctermbg=7
hi IncSearch     ctermfg=15    ctermbg=11    cterm=NONE
hi Search        ctermfg=15    ctermbg=11
hi StatusLine    ctermfg=15    ctermbg=12    cterm=bold
hi StatusLineNC  ctermfg=15    ctermbg=8     cterm=bold
hi VertSplit     ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi TabLine       ctermfg=15    ctermbg=7     cterm=NONE
hi TabLineSel    ctermfg=15    ctermbg=8
hi TabLineFill   ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi Folded        ctermfg=8     ctermbg=NONE
hi Directory     ctermfg=6
hi Title         ctermfg=NONE
hi ErrorMsg      ctermfg=15    ctermbg=9
hi WarningMsg    ctermfg=15    ctermbg=11
hi DiffAdd       ctermfg=15    ctermbg=10
hi DiffChange    ctermfg=15    ctermbg=11
hi DiffDelete    ctermfg=15    ctermbg=9
hi DiffText      ctermfg=NONE  ctermbg=NONE  cterm=bold
hi WildMenu      ctermfg=15    ctermbg=8     cterm=bold

hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link FoldColumn    SignColumn
hi! link MoreMsg       ModeMsg
hi! link Question      ModeMsg
hi! link SpecialKey    NonText

" Generic syntax
hi Comment     ctermfg=8
hi String      ctermfg=1
hi Character   ctermfg=4
hi Number      ctermfg=4
hi Boolean     ctermfg=5
hi Float       ctermfg=4
hi Identifier  ctermfg=4
hi Statement   ctermfg=5
hi PreProc     ctermfg=3
hi Type        ctermfg=5
hi Special     ctermfg=3
hi Delimiter   ctermfg=NONE
hi Underlined  ctermfg=4     cterm=underline
hi Ignore      ctermfg=7
hi Error       ctermfg=15    ctermbg=9
hi Todo        ctermfg=3     ctermbg=NONE

