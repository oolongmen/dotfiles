"
" derived from molokai
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="oolong"

" Basic hightlight
"hi Normal           ctermfg=252     ctermbg=233
hi Normal           ctermfg=252     ctermbg=None
hi Comment          ctermfg=244

" Constants
hi Constant         ctermfg=141                     cterm=bold
hi String           ctermfg=222
hi Character        ctermfg=222
hi Number           ctermfg=141
hi Boolean          ctermfg=141
hi Float            ctermfg=141

" Identifier
hi Identifier       ctermfg=208
hi Function         ctermfg=111

" Statement
hi Statement        ctermfg=197
hi Conditional      ctermfg=197                     cterm=bold
hi Repeat           ctermfg=197                     cterm=bold
hi Label            ctermfg=229                     cterm=none
hi Operator         ctermfg=197
hi Keyword          ctermfg=197                     cterm=bold
hi Exception        ctermfg=197                     cterm=bold

" PreProc
hi PreProc          ctermfg=154
hi Include          ctermfg=154 
hi Define           ctermfg=81
hi Macro            ctermfg=193 
hi PreCondit        ctermfg=154                     cterm=bold

" Type
hi Type             ctermfg=81
hi StorageClass     ctermfg=208
hi Structure        ctermfg=81
hi Typedef          ctermfg=81

" Special
hi Special          ctermfg=81
hi SpecialChar      ctermfg=161                     cterm=bold
hi Tag              ctermfg=197
hi Delimiter        ctermfg=241
hi SpecialComment   ctermfg=245                     cterm=bold
hi Debug            ctermfg=225

" Underlined
hi Underlined       ctermfg=244                     cterm=underline

" Ignore
hi Ignore           ctermfg=244     ctermbg=232

" Error
hi Error            ctermfg=222     ctermbg=233

" Todo
hi Todo             ctermfg=231     ctermbg=232     cterm=bold

" Extended highlight
hi SpecialKey       ctermfg=81
hi NonText          ctermfg=239
hi StatusLine       ctermfg=238     ctermbg=253
hi StatusLineNC     ctermfg=244     ctermbg=232
hi Visual                           ctermbg=238
hi Directory        ctermfg=154                     cterm=bold
hi ErrorMsg         ctermfg=199     ctermbg=16
hi IncSearch        ctermfg=193     ctermbg=16
hi Search           ctermfg=0       ctermbg=222     cterm=none
hi MoreMsg          ctermfg=229
hi ModeMsg          ctermfg=229
hi LineNr           ctermfg=239     ctermbg=234
hi Question         ctermfg=81
hi VerticalSplit    ctermfg=244     ctermbg=232     cterm=bold
hi Title            ctermfg=203
hi VisualNOS                        ctermbg=238
hi WarningMsg       ctermfg=231     ctermbg=238     cterm=bold
hi WildMenu         ctermfg=81      ctermbg=16
hi Folded           ctermfg=67      ctermbg=16
hi FoldColumn       ctermfg=67      ctermbg=16
hi DiffAdd                          ctermbg=24
hi DiffChange       ctermfg=181     ctermbg=239
hi DiffDelete       ctermfg=125     ctermbg=233
hi DiffText                         ctermbg=102     cterm=bold
hi SignColumn       ctermfg=118     ctermbg=235
"hi Conceal      
hi SpellBad                         ctermbg=52
hi SpellCap                         ctermbg=17
hi SpellRare        ctermfg=none    ctermbg=none    cterm=reverse
hi SpellLocal                       ctermbg=17
hi Pmenu            ctermfg=81      ctermbg=16
hi PmenuSel         ctermfg=255     ctermbg=242
hi PmenuSbar                        ctermbg=232
hi PmenuThumb       ctermfg=81
"hi TabLine
"hi TabLineFill
"hi CursorColumn
hi CursorLine                       ctermbg=234     cterm=none
hi CursorLineNr     ctermfg=208                     cterm=none
"hi ColorColumn
hi Cursor           ctermfg=16      ctermbg=253
hi MatchParen       ctermfg=233     ctermbg=208     cterm=bold

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
