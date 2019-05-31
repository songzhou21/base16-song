" Console 256 Colours
let s:foreground = "250"
let s:background = "235"
let s:selection = "239"
let s:line = "236"
let s:comment = "245"

let s:red = "167"
let s:orange = "173"
let s:yellow = "222"
let s:green = "143"
let s:aqua = "109"
let s:blue = "109"
let s:purple = "139"
let s:window = "240"

hi clear
syntax reset
set background=dark

let g:colors_name = "minimal"

" Sets the highlighting for the given group
fun <SID>X(group, fg, bg, attr)
    if a:fg != ""
        exec "hi " . a:group . " ctermfg=" . a:fg
    endif
    if a:bg != ""
        exec "hi " . a:group .  " ctermbg=" . a:bg
    endif
    if a:attr != ""
        exec "hi " . a:group . " cterm=" . a:attr
    endif
endfun

" Vim Highlighting
call <SID>X("Normal", s:foreground, s:background, "")
call <SID>X("LineNr", s:selection, "", "")
call <SID>X("NonText", s:selection, "", "")
call <SID>X("SpecialKey", s:selection, "", "")
call <SID>X("Search", s:background, s:yellow, "")
call <SID>X("TabLine", s:window, s:foreground, "reverse")
call <SID>X("TabLineFill", s:window, s:foreground, "reverse")
call <SID>X("StatusLine", s:window, s:yellow, "reverse")
call <SID>X("StatusLineNC", s:window, s:foreground, "reverse")
call <SID>X("VertSplit", s:window, s:window, "none")
call <SID>X("Visual", "", s:selection, "")
call <SID>X("Directory", s:blue, "", "")
call <SID>X("ModeMsg", s:green, "", "")
call <SID>X("MoreMsg", s:green, "", "")
call <SID>X("Question", s:green, "", "")
call <SID>X("WarningMsg", s:red, "", "")
call <SID>X("MatchParen", "", s:selection, "")
call <SID>X("Folded", s:comment, s:background, "")
call <SID>X("FoldColumn", "", s:background, "")
if version >= 700
call <SID>X("CursorLine", "", s:line, "none")
call <SID>X("CursorColumn", "", s:line, "none")
call <SID>X("PMenu", s:foreground, s:selection, "none")
call <SID>X("PMenuSel", s:foreground, s:selection, "reverse")
call <SID>X("SignColumn", "", s:background, "none")
end
if version >= 703
call <SID>X("ColorColumn", "", s:line, "none")
end

" Standard Highlighting
call <SID>X("Comment", s:comment, "", "")
call <SID>X("Todo", s:comment, s:background, "")
call <SID>X("Title", s:comment, "", "")

call <SID>X("Identifier", s:red, "", "none")
call <SID>X("Constant", s:orange, "", "")
call <SID>X("Keyword", s:orange, "", "")
call <SID>X("String", s:green, "", "")
call <SID>X("Operator", s:aqua, "", "none")

call <SID>X("Structure", s:purple, "", "")
call <SID>X("PreProc", s:purple, "", "")
call <SID>X("Define", s:purple, "", "none")

call <SID>X("Function", s:blue, "", "")
call <SID>X("Type", s:blue, "", "none")
call <SID>X("Include", s:blue, "", "")

call <SID>X("Special", s:foreground, "", "")
call <SID>X("Statement", s:foreground, "", "")
call <SID>X("Conditional", s:foreground, "", "")
call <SID>X("Repeat", s:foreground, "", "")


" Diff Highlighting
call <SID>X("diffAdd", "", "4c4e39", "")
call <SID>X("diffDelete", s:background, s:red, "")
call <SID>X("diffChange", "", "2B5B77", "")
call <SID>X("diffText", s:line, s:blue, "")

" Git
call <SID>X("diffAdded", s:green, "", "")
call <SID>X("diffRemoved", s:red, "", "")
call <SID>X("gitcommitSummary", "", "", "bold")

" Delete Functions
delf <SID>X
