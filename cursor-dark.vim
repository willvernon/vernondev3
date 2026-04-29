" Cursor Dark Theme for Neovim
" Replicates the Cursor editor's dark theme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cursor-dark"

" Base colors (matching Cursor's dark theme)
let s:bg = "#0d1117"           " Background
let s:fg = "#e6edf3"           " Foreground text
let s:bg_alt = "#161b22"       " Alternative background
let s:fg_alt = "#7d8590"       " Muted text
let s:border = "#30363d"       " Borders
let s:accent = "#58a6ff"       " Blue accent
let s:accent_alt = "#79c0ff"   " Light blue
let s:green = "#3fb950"        " Success/git added
let s:red = "#f85149"          " Error/git deleted
let s:orange = "#d29922"       " Warning
let s:purple = "#a5a5ff"       " Purple
let s:pink = "#f47067"         " Pink

" Basic highlighting
exe "hi Normal guifg=" . s:fg . " guibg=" . s:bg
exe "hi Comment guifg=" . s:fg_alt . " gui=italic"
exe "hi Constant guifg=" . s:accent
exe "hi String guifg=" . s:green
exe "hi Character guifg=" . s:green
exe "hi Number guifg=" . s:accent
exe "hi Boolean guifg=" . s:accent
exe "hi Float guifg=" . s:accent

" Keywords and statements
exe "hi Identifier guifg=" . s:accent_alt
exe "hi Function guifg=" . s:accent_alt
exe "hi Statement guifg=" . s:purple . " gui=bold"
exe "hi Conditional guifg=" . s:purple . " gui=bold"
exe "hi Repeat guifg=" . s:purple . " gui=bold"
exe "hi Label guifg=" . s:purple . " gui=bold"
exe "hi Operator guifg=" . s:fg
exe "hi Keyword guifg=" . s:purple . " gui=bold"
exe "hi Exception guifg=" . s:purple . " gui=bold"

" Types and classes
exe "hi Type guifg=" . s:accent_alt
exe "hi StorageClass guifg=" . s:purple . " gui=bold"
exe "hi Structure guifg=" . s:purple . " gui=bold"
exe "hi Typedef guifg=" . s:purple . " gui=bold"

" Preprocessor and special
exe "hi PreProc guifg=" . s:purple
exe "hi Include guifg=" . s:purple
exe "hi Define guifg=" . s:purple
exe "hi Macro guifg=" . s:purple
exe "hi PreCondit guifg=" . s:purple
exe "hi Special guifg=" . s:accent
exe "hi SpecialChar guifg=" . s:accent
exe "hi Tag guifg=" . s:accent
exe "hi Delimiter guifg=" . s:fg
exe "hi SpecialComment guifg=" . s:fg_alt
exe "hi Debug guifg=" . s:red

" Underlined and error
exe "hi Underlined guifg=" . s:accent . " gui=underline"
exe "hi Ignore guifg=" . s:bg
exe "hi Error guifg=" . s:red . " guibg=" . s:bg
exe "hi Todo guifg=" . s:orange . " guibg=" . s:bg . " gui=bold"

" UI elements
exe "hi LineNr guifg=" . s:fg_alt . " guibg=" . s:bg
exe "hi CursorLineNr guifg=" . s:fg . " guibg=" . s:bg_alt . " gui=bold"
exe "hi CursorLine guibg=" . s:bg_alt
exe "hi CursorColumn guibg=" . s:bg_alt
exe "hi ColorColumn guibg=" . s:bg_alt
exe "hi Cursor guifg=" . s:bg . " guibg=" . s:fg

" Status line
exe "hi StatusLine guifg=" . s:fg . " guibg=" . s:bg_alt
exe "hi StatusLineNC guifg=" . s:fg_alt . " guibg=" . s:bg_alt
exe "hi StatusLineTerm guifg=" . s:fg . " guibg=" . s:bg_alt
exe "hi StatusLineTermNC guifg=" . s:fg_alt . " guibg=" . s:bg_alt

" Tab line
exe "hi TabLine guifg=" . s:fg_alt . " guibg=" . s:bg_alt
exe "hi TabLineFill guibg=" . s:bg_alt
exe "hi TabLineSel guifg=" . s:fg . " guibg=" . s:bg . " gui=bold"

" Visual selection
exe "hi Visual guibg=" . s:border
exe "hi VisualNOS guibg=" . s:border

" Search
exe "hi Search guifg=" . s:bg . " guibg=" . s:orange
exe "hi IncSearch guifg=" . s:bg . " guibg=" . s:accent

" Messages
exe "hi ErrorMsg guifg=" . s:red . " guibg=" . s:bg
exe "hi WarningMsg guifg=" . s:orange . " guibg=" . s:bg
exe "hi ModeMsg guifg=" . s:fg
exe "hi MoreMsg guifg=" . s:accent
exe "hi Question guifg=" . s:accent

" Pmenu (completion menu)
exe "hi Pmenu guifg=" . s:fg . " guibg=" . s:bg_alt
exe "hi PmenuSel guifg=" . s:bg . " guibg=" . s:accent
exe "hi PmenuSbar guibg=" . s:border
exe "hi PmenuThumb guibg=" . s:fg_alt

" Diff
exe "hi DiffAdd guifg=" . s:green . " guibg=" . s:bg
exe "hi DiffChange guifg=" . s:orange . " guibg=" . s:bg
exe "hi DiffDelete guifg=" . s:red . " guibg=" . s:bg
exe "hi DiffText guifg=" . s:fg . " guibg=" . s:bg

" Fold
exe "hi Folded guifg=" . s:fg_alt . " guibg=" . s:bg_alt
exe "hi FoldColumn guifg=" . s:fg_alt . " guibg=" . s:bg

" Sign column
exe "hi SignColumn guifg=" . s:fg_alt . " guibg=" . s:bg

" Spell
exe "hi SpellBad guifg=" . s:red . " gui=undercurl"
exe "hi SpellCap guifg=" . s:orange . " gui=undercurl"
exe "hi SpellLocal guifg=" . s:orange . " gui=undercurl"
exe "hi SpellRare guifg=" . s:orange . " gui=undercurl"

" Non-text
exe "hi NonText guifg=" . s:border
exe "hi SpecialKey guifg=" . s:border

" Vert split
exe "hi VertSplit guifg=" . s:border . " guibg=" . s:bg

" Wild menu
exe "hi WildMenu guifg=" . s:bg . " guibg=" . s:accent

" Directory
exe "hi Directory guifg=" . s:accent

" Title
exe "hi Title guifg=" . s:fg . " gui=bold"

" Conceal
exe "hi Conceal guifg=" . s:fg_alt . " guibg=" . s:bg

" MatchParen
exe "hi MatchParen guifg=" . s:bg . " guibg=" . s:accent

" QuickFix
exe "hi QuickFixLine guibg=" . s:bg_alt

" Terminal colors
if has('terminal')
  let g:terminal_color_0 = s:bg
  let g:terminal_color_1 = s:red
  let g:terminal_color_2 = s:green
  let g:terminal_color_3 = s:orange
  let g:terminal_color_4 = s:accent
  let g:terminal_color_5 = s:purple
  let g:terminal_color_6 = s:accent_alt
  let g:terminal_color_7 = s:fg
  let g:terminal_color_8 = s:fg_alt
  let g:terminal_color_9 = s:pink
  let g:terminal_color_10 = s:green
  let g:terminal_color_11 = s:orange
  let g:terminal_color_12 = s:accent
  let g:terminal_color_13 = s:purple
  let g:terminal_color_14 = s:accent_alt
  let g:terminal_color_15 = s:fg
endif
