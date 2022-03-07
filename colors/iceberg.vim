function! iceberg#create() abort
  let hue_base = 230

  let hue_red = 0
  let hue_orange = 25
  let hue_green = 70
  let hue_lblue = 190
  let hue_blue = 215
  let hue_purple = 255
  let hue_pale = 225

  " gui {{{
  let g = {}

  " palette
  let g.blue   = pgmnt#color#hsl(hue_blue,   0.37, 0.65)
  let g.green  = pgmnt#color#hsl(hue_green,  0.32, 0.63)
  let g.lblue  = pgmnt#color#hsl(hue_lblue,  0.32, 0.65)
  let g.orange = pgmnt#color#hsl(hue_orange, 0.65, 0.68)
  let g.purple = pgmnt#color#hsl(hue_purple, 0.32, 0.68)
  let g.red    = pgmnt#color#hsl(hue_red,    0.65, 0.68)
  let g.pale   = pgmnt#color#hsl(hue_pale,   0.28, 0.72)

  " normal
  let g.normal_bg = pgmnt#color#hsl(hue_base, 0.20, 0.11)
  let g.normal_fg = pgmnt#color#hsl(hue_base, 0.10, 0.80)

  " tint
  let g.blue_tint_bg   = pgmnt#color#mix(g.blue, g.normal_bg, 0.30)
  let g.blue_tint_fg   = pgmnt#color#mix(g.blue, g.normal_fg, 0.30)
  let g.green_tint_bg  = pgmnt#color#mix(g.green, g.normal_bg, 0.30)
  let g.green_tint_fg  = pgmnt#color#mix(g.green, g.normal_fg, 0.30)
  let g.lblue_tint_bg  = pgmnt#color#mix(g.lblue, g.normal_bg, 0.30)
  let g.lblue_tint_fg  = pgmnt#color#mix(g.lblue, g.normal_fg, 0.30)
  let g.purple_tint_bg = pgmnt#color#mix(g.purple, g.normal_bg, 0.30)
  let g.purple_tint_fg = pgmnt#color#mix(g.purple, g.normal_fg, 0.30)
  let g.red_tint_bg    = pgmnt#color#mix(g.red, g.normal_bg, 0.30)
  let g.red_tint_fg    = pgmnt#color#mix(g.red, g.normal_fg, 0.30)

  " linenr
  let g.linenr_bg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.05,
        \   'lightness': +0.05,
        \ })
  let g.linenr_fg = pgmnt#color#lighten(g.linenr_bg, 0.20)
  let g.cursorlinenr_bg = pgmnt#color#adjust_color(
        \ g.linenr_bg, {
        \   'saturation': +0.10,
        \   'lightness': +0.10,
        \ })
  let g.cursorlinenr_fg = pgmnt#color#adjust_color(
        \ g.linenr_fg, {
        \   'saturation': +0.10, 
        \   'lightness': +0.50,
        \ })

  " diff
  let g.difftext_bg = pgmnt#color#mix(g.lblue, g.normal_bg, 0.6)
  let g.difftext_fg = g.normal_fg

  " statusline
  let g.statusline_bg = pgmnt#color#hsl(hue_base, 0.09, 0.55)
  let g.statusline_fg = pgmnt#color#hsl(hue_base, 0.09, 0.10)
  let g.statuslinenc_bg = pgmnt#color#darken(g.normal_bg, 0.03)
  let g.statuslinenc_fg = pgmnt#color#lighten(g.normal_bg, 0.20)

  " pmenu
  let g.pmenu_bg = pgmnt#color#hsl(hue_base, 0.20, 0.30)
  let g.pmenu_fg = g.normal_fg
  let g.pmenusel_bg = pgmnt#color#hsl(hue_base, 0.20, 0.45)
  let g.pmenusel_fg = pgmnt#color#hsl(hue_base, 0.20, 0.95)

  " misc
  let g.comment_fg = pgmnt#color#hsl(hue_base, 0.12, 0.48)
  let g.cursorline_bg = g.linenr_bg
  let g.folded_bg = g.linenr_bg
  let g.folded_fg = pgmnt#color#adjust_color(
        \ g.folded_bg, {
        \   'saturation': -0.05,
        \   'lightness': +0.35,
        \ })
  let g.matchparen_bg = pgmnt#color#lighten(g.normal_bg, 0.20)
  let g.matchparen_fg = pgmnt#color#lighten(g.normal_fg, 0.50)
  let g.search_bg = pgmnt#color#hsl(hue_orange, 0.65, 0.70)
  let g.search_fg = pgmnt#color#hsl(hue_orange, 0.50, 0.15)
  let g.specialkey_fg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.10,
        \   'lightness': +0.35,
        \ })
  let g.tablinesel_bg = g.normal_bg
  let g.tablinesel_fg = pgmnt#color#mix(g.normal_fg, g.normal_bg, 0.75)
  let g.todo_bg = g.green_tint_bg
  let g.todo_fg = g.green
  let g.visual_bg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.05,
        \   'lightness': +0.10,
        \ })
  let g.whitespace_fg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.08,
        \   'lightness': +0.09,
        \ })
  let g.wildmenu_bg = pgmnt#color#lighten(g.statusline_bg, 0.30)
  let g.wildmenu_fg = g.statusline_fg

  " ansi colors
  let g.term_colors = [
        \   g.cursorline_bg,
        \   g.red,
        \   g.green,
        \   g.orange,
        \   g.blue,
        \   g.purple,
        \   g.lblue,
        \   g.normal_fg,
        \   g.comment_fg,
        \   pgmnt#color#adjust_color(g.red,       {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.green,     {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.orange,    {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.blue,      {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.purple,    {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.lblue,     {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.normal_fg, {'saturation': +0.05, 'lightness': +0.05}),
        \ ]

  " airline/lightline
  let g.xline_base_bg = g.statuslinenc_bg
  let g.xline_base_fg = g.statuslinenc_fg
  let g.xline_edge_bg = g.statusline_bg
  let g.xline_edge_fg = g.statusline_fg
  let g.xline_gradient_bg = pgmnt#color#adjust_color(
        \ pgmnt#color#mix(g.xline_base_bg, g.xline_edge_bg, 0.70), {
        \   'saturation': +0.05,
        \ })
  let g.xline_gradient_fg = g.comment_fg

  " plugins
  let g.easymotion_shade_fg = pgmnt#color#hsl(hue_base, 0.20, 0.30)
  " }}}

  " cterm {{{
  let c = {}

  " palette
  let c.blue = 110
  let c.green = 150
  let c.lblue = 109
  let c.orange = 216
  let c.purple = 140
  let c.red = 203
  let c.pale = 252

  " normal
  let c.normal_bg = 234
  let c.normal_fg = 252

  " tint
  let c.blue_tint_bg   = 24
  let c.blue_tint_fg   = 153
  let c.green_tint_bg  = 29
  let c.green_tint_fg  = 158
  let c.lblue_tint_bg  = 23
  let c.lblue_tint_fg  = 159
  let c.purple_tint_bg = 97
  let c.purple_tint_fg = 225
  let c.red_tint_bg    = 95
  let c.red_tint_fg    = 224

  " linenr
  let c.linenr_bg = 235
  let c.linenr_fg = 239
  let c.cursorlinenr_bg = 237
  let c.cursorlinenr_fg = 253

  " diff
  let c.difftext_bg = 30
  let c.difftext_fg = 195

  " statusline
  let c.statusline_bg = 245
  let c.statusline_fg = 234
  let c.statuslinenc_bg = 233
  let c.statuslinenc_fg = 238

  " pmenu
  let c.pmenu_bg = 236
  let c.pmenu_fg = 251
  let c.pmenusel_bg = 240
  let c.pmenusel_fg = 255

  " misc
  let c.comment_fg = 242
  let c.cursorline_bg = c.linenr_bg
  let c.folded_bg = c.linenr_bg
  let c.folded_fg = 245
  let c.matchparen_bg = 237
  let c.matchparen_fg = 255
  let c.search_bg = c.orange
  let c.search_fg = c.normal_bg
  let c.specialkey_fg = 240
  let c.todo_bg = c.normal_bg
  let c.todo_fg = c.green
  let c.visual_bg = 236
  let c.whitespace_fg = 236
  let c.wildmenu_bg = 255
  let c.wildmenu_fg = c.statusline_fg

  " airline/lightline
  let c.xline_base_bg = c.statuslinenc_bg
  let c.xline_base_fg = c.statuslinenc_fg
  let c.xline_edge_bg = c.statusline_bg
  let c.xline_edge_fg = c.statusline_fg
  let c.xline_gradient_bg = 236
  let c.xline_gradient_fg = c.comment_fg

  " plugins
  let c.easymotion_shade_fg = 239
  " }}}

  return {
        \   'cterm': c,
        \   'gui': g,
        \ }
endfunction
function! iceberg#create() abort
  let hue_base = 230

  let hue_red    = 340
  let hue_orange = 25
  let hue_green  = 90
  let hue_lblue  = 200
  let hue_blue   = 220
  let hue_purple = 260
  let hue_pale = 235

  " gui {{{
  let g = {}

  " palette
  let g.blue   = pgmnt#color#hsl(hue_blue,   0.55, 0.40)
  let g.green  = pgmnt#color#hsl(hue_green,  0.40, 0.40)
  let g.lblue  = pgmnt#color#hsl(hue_lblue,  0.45, 0.45)
  let g.orange = pgmnt#color#hsl(hue_orange, 0.55, 0.50)
  let g.purple = pgmnt#color#hsl(hue_purple, 0.38, 0.53)
  let g.red    = pgmnt#color#hsl(hue_red,    0.55, 0.56)
  let g.pale   = pgmnt#color#hsl(hue_pale,   0.30, 0.45)

  " normal
  let g.normal_bg = pgmnt#color#hsl(hue_base, 0.10, 0.92)
  let g.normal_fg = pgmnt#color#hsl(hue_base, 0.20, 0.25)

  " tint
  let g.blue_tint_bg   = pgmnt#color#mix(g.blue, g.normal_bg, 0.15)
  let g.blue_tint_fg   = pgmnt#color#mix(g.blue, g.normal_fg, 0.40)
  let g.green_tint_bg  = pgmnt#color#mix(g.green, g.normal_bg, 0.15)
  let g.green_tint_fg  = pgmnt#color#mix(g.green, g.normal_fg, 0.40)
  let g.lblue_tint_bg  = pgmnt#color#mix(g.lblue, g.normal_bg, 0.15)
  let g.lblue_tint_fg  = pgmnt#color#mix(g.lblue, g.normal_fg, 0.40)
  let g.purple_tint_bg = pgmnt#color#mix(g.purple, g.normal_bg, 0.15)
  let g.purple_tint_fg = pgmnt#color#mix(g.purple, g.normal_fg, 0.40)
  let g.red_tint_bg    = pgmnt#color#mix(g.red, g.normal_bg, 0.15)
  let g.red_tint_fg    = pgmnt#color#mix(g.red, g.normal_fg, 0.40)

  " linenr
  let g.linenr_bg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.10,
        \   'lightness': -0.03,
        \ })
  let g.linenr_fg = pgmnt#color#darken(g.linenr_bg, 0.20)
  let g.cursorlinenr_bg = pgmnt#color#adjust_color(
        \ g.linenr_bg, {
        \   'saturation': +0.05,
        \   'lightness': -0.05,
        \ })
  let g.cursorlinenr_fg = pgmnt#color#adjust_color(
        \ g.linenr_fg, {
        \   'saturation': +0.10, 
        \   'lightness': -0.20,
        \ })

  " diff
  let g.difftext_bg = pgmnt#color#mix(g.lblue, g.normal_bg, 0.35)
  let g.difftext_fg = g.normal_fg

  " statusline
  let g.statusline_bg = pgmnt#color#hsl(hue_base, 0.20, 0.55)
  let g.statusline_fg = g.normal_bg
  let g.statuslinenc_bg = g.cursorlinenr_bg
  let g.statuslinenc_fg = pgmnt#color#darken(g.statuslinenc_bg, 0.20)

  " pmenu
  let g.pmenu_bg = g.cursorlinenr_bg
  let g.pmenu_fg = g.normal_fg
  let g.pmenusel_bg = pgmnt#color#adjust_color(
        \ g.pmenu_bg, {
        \   'saturation': +0.05,
        \   'lightness': -0.1,
        \ })
  let g.pmenusel_fg = g.normal_fg

  " misc
  let g.comment_fg = pgmnt#color#hsl(hue_base, 0.15, 0.58)
  let g.cursorline_bg = g.linenr_bg
  let g.folded_bg = g.linenr_bg
  let g.folded_fg = pgmnt#color#adjust_color(
        \ g.folded_bg, {
        \   'saturation': -0.05,
        \   'lightness': -0.35,
        \ })
  let g.matchparen_bg = pgmnt#color#darken(g.normal_bg, 0.15)
  let g.matchparen_fg = pgmnt#color#darken(g.normal_fg, 0.00)
  let g.search_bg = pgmnt#color#hsl(hue_orange, 0.60, 0.80)
  let g.search_fg = pgmnt#color#hsl(hue_orange, 0.50, 0.35)
  let g.specialkey_fg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.25,
        \   'lightness': -0.18,
        \ })
  let g.tablinesel_bg = g.normal_bg
  let g.tablinesel_fg = pgmnt#color#mix(g.normal_fg, g.normal_bg, 0.75)
  let g.todo_bg = g.green_tint_bg
  let g.todo_fg = g.green
  let g.visual_bg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.05,
        \   'lightness': -0.10,
        \ })
  let g.whitespace_fg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.08,
        \   'lightness': -0.09,
        \ })
  let g.wildmenu_bg = pgmnt#color#darken(g.statusline_bg, 0.30)
  let g.wildmenu_fg = g.statusline_fg

  " ansi colors
  let g.term_colors = [
        \   g.cursorline_bg,
        \   g.red,
        \   g.green,
        \   g.orange,
        \   g.blue,
        \   g.purple,
        \   g.lblue,
        \   g.normal_fg,
        \   g.comment_fg,
        \   pgmnt#color#adjust_color(g.red,       {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.green,     {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.orange,    {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.blue,      {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.purple,    {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.lblue,     {'saturation': +0.05, 'lightness': -0.05}),
        \   pgmnt#color#adjust_color(g.normal_fg, {'saturation': +0.05, 'lightness': -0.05}),
        \ ]

  " airline/lightline
  let g.xline_base_bg = g.statuslinenc_bg
  let g.xline_base_fg = g.statuslinenc_fg
  let g.xline_edge_bg = g.statusline_bg
  let g.xline_edge_fg = g.statusline_fg
  let g.xline_gradient_bg = pgmnt#color#mix(g.xline_base_bg, g.xline_edge_bg, 0.50)
  let g.xline_gradient_fg = g.xline_edge_fg

  " plugins
  let g.easymotion_shade_fg = pgmnt#color#hsl(hue_base, 0.15, 0.77)
  " }}}

  " cterm {{{
  let c = {}

  " palette
  let c.blue = 25
  let c.green = 64
  let c.lblue = 31
  let c.orange = 130
  let c.purple = 97
  let c.red = 125
  let c.pale = 237

  " normal
  let c.normal_bg = 254
  let c.normal_fg = 237

  " tint
  let c.blue_tint_bg   = 117
  let c.blue_tint_fg   = 153
  let c.green_tint_bg  = 79
  let c.green_tint_fg  = 23
  let c.lblue_tint_bg  = 116
  let c.lblue_tint_fg  = 24
  let c.purple_tint_bg = 110
  let c.purple_tint_fg = 225
  let c.red_tint_bg    = 181
  let c.red_tint_fg    = 89

  " linenr
  let c.linenr_bg = 253
  let c.linenr_fg = 248
  let c.cursorlinenr_bg = 251
  let c.cursorlinenr_fg = 237

  " diff
  let c.difftext_bg = 73
  let c.difftext_fg = 24

  " statusline
  let c.statusline_bg = 243
  let c.statusline_fg = 252
  let c.statuslinenc_bg = 251
  let c.statuslinenc_fg = 244

  " pmenu
  let c.pmenu_bg = 251
  let c.pmenu_fg = 237
  let c.pmenusel_bg = 248
  let c.pmenusel_fg = 235

  " misc
  let c.comment_fg = 244
  let c.cursorline_bg = c.linenr_bg
  let c.folded_bg = c.linenr_bg
  let c.folded_fg = 243
  let c.matchparen_bg = 250
  let c.matchparen_fg = 0
  let c.search_bg = 180
  let c.search_fg = 94
  let c.specialkey_fg = 248
  let c.todo_bg = c.normal_bg
  let c.todo_fg = c.green
  let c.visual_bg = 251
  let c.whitespace_fg = 251
  let c.wildmenu_bg = 235
  let c.wildmenu_fg = c.statusline_fg

  " airline/lightline
  let c.xline_base_bg = c.statuslinenc_bg
  let c.xline_base_fg = c.statuslinenc_fg
  let c.xline_edge_bg = c.statusline_bg
  let c.xline_edge_fg = c.statusline_fg
  let c.xline_gradient_bg = 247
  let c.xline_gradient_fg = c.xline_edge_fg

  " plugins
  let c.easymotion_shade_fg = 250
  " }}}

  return {
        \   'cterm': c,
        \   'gui': g,
        \ }
endfunction
" _________________________________________
" \_ _/ ____| ____| ___ \ ____| ___ \  ___/
"  | | |____| ____| ___ < ____| __  / |__ \
" /___\_____|_____|_____/_____|_| \_\_____/
"
" File:       iceberg.vim
" Maintainer: cocopon <cocopon@me.com>
" Modified:   2021-12-28 09:50+0900
" License:    MIT


if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'iceberg'

if &background == 'light'
  hi Normal ctermbg=254 ctermfg=237 guibg=#e8e9ec guifg=#33374c
  hi ColorColumn cterm=NONE ctermbg=253 ctermfg=NONE guibg=#dcdfe7 guifg=NONE
  hi CursorColumn cterm=NONE ctermbg=253 ctermfg=NONE guibg=#dcdfe7 guifg=NONE
  hi CursorLine cterm=NONE ctermbg=253 ctermfg=NONE guibg=#dcdfe7 guifg=NONE
  hi Comment ctermfg=244 guifg=#8389a3
  hi Conceal ctermbg=254 ctermfg=244 guibg=#e8e9ec guifg=#8389a3
  hi Constant ctermfg=97 guifg=#7759b4
  hi Cursor ctermbg=237 ctermfg=254 guibg=#33374c guifg=#e8e9ec
  hi CursorLineNr cterm=NONE ctermbg=251 ctermfg=237 guibg=#cad0de guifg=#576a9e
  hi Delimiter ctermfg=237 guifg=#33374c
  hi DiffAdd ctermbg=79 ctermfg=23 guibg=#d4dbd1 guifg=#475946
  hi DiffChange ctermbg=116 ctermfg=24 guibg=#ced9e1 guifg=#375570
  hi DiffDelete cterm=NONE ctermbg=181 ctermfg=89 gui=NONE guibg=#e3d2da guifg=#70415e
  hi DiffText cterm=NONE ctermbg=73 ctermfg=24 gui=NONE guibg=#acc5d3 guifg=#33374c
  hi Directory ctermfg=31 guifg=#3f83a6
  hi Error ctermbg=254 ctermfg=125 guibg=#e8e9ec guifg=#cc517a
  hi ErrorMsg ctermbg=254 ctermfg=125 guibg=#e8e9ec guifg=#cc517a
  hi WarningMsg ctermbg=254 ctermfg=125 guibg=#e8e9ec guifg=#cc517a
  hi EndOfBuffer ctermfg=251 guifg=#cbcfda
  hi NonText ctermfg=251 guifg=#cbcfda
  hi Whitespace ctermfg=251 guifg=#cbcfda
  hi Folded ctermbg=253 ctermfg=243 guibg=#dcdfe7 guifg=#788098
  hi FoldColumn ctermbg=253 ctermfg=248 guibg=#dcdfe7 guifg=#9fa7bd
  hi Function ctermfg=25 guifg=#2d539e
  hi Identifier cterm=NONE ctermfg=31 guifg=#3f83a6
  hi Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  hi Include ctermfg=25 guifg=#2d539e
  hi IncSearch cterm=reverse ctermfg=NONE gui=reverse guifg=NONE term=reverse
  hi LineNr ctermbg=253 ctermfg=248 guibg=#dcdfe7 guifg=#9fa7bd
  hi MatchParen ctermbg=250 ctermfg=0 guibg=#bec0c9 guifg=#33374c
  hi ModeMsg ctermfg=244 guifg=#8389a3
  hi MoreMsg ctermfg=64 guifg=#668e3d
  hi Operator ctermfg=25 guifg=#2d539e
  hi Pmenu ctermbg=251 ctermfg=237 guibg=#cad0de guifg=#33374c
  hi PmenuSbar ctermbg=251 ctermfg=NONE guibg=#cad0de guifg=NONE
  hi PmenuSel ctermbg=248 ctermfg=235 guibg=#a7b2cd guifg=#33374c
  hi PmenuThumb ctermbg=237 ctermfg=NONE guibg=#33374c guifg=NONE
  hi PreProc ctermfg=64 guifg=#668e3d
  hi Question ctermfg=64 guifg=#668e3d
  hi QuickFixLine ctermbg=251 ctermfg=237 guibg=#c9cdd7 guifg=#33374c
  hi Search ctermbg=180 ctermfg=94 guibg=#eac6ad guifg=#85512c
  hi SignColumn ctermbg=253 ctermfg=248 guibg=#dcdfe7 guifg=#9fa7bd
  hi Special ctermfg=64 guifg=#668e3d
  hi SpecialKey ctermfg=248 guifg=#a5b0d3
  hi SpellBad ctermbg=181 ctermfg=237 gui=undercurl guifg=NONE guisp=#cc517a
  hi SpellCap ctermbg=117 ctermfg=237 gui=undercurl guifg=NONE guisp=#2d539e
  hi SpellLocal ctermbg=116 ctermfg=237 gui=undercurl guifg=NONE guisp=#3f83a6
  hi SpellRare ctermbg=110 ctermfg=237 gui=undercurl guifg=NONE guisp=#7759b4
  hi Statement ctermfg=25 gui=NONE guifg=#2d539e
  hi StatusLine cterm=reverse ctermbg=252 ctermfg=243 gui=reverse guibg=#e8e9ec guifg=#757ca3 term=reverse
  hi StatusLineTerm cterm=reverse ctermbg=252 ctermfg=243 gui=reverse guibg=#e8e9ec guifg=#757ca3 term=reverse
  hi StatusLineNC cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#8b98b6 guifg=#cad0de
  hi StatusLineTermNC cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#8b98b6 guifg=#cad0de
  hi StorageClass ctermfg=25 guifg=#2d539e
  hi String ctermfg=31 guifg=#3f83a6
  hi Structure ctermfg=25 guifg=#2d539e
  hi TabLine cterm=NONE ctermbg=251 ctermfg=244 gui=NONE guibg=#cad0de guifg=#8b98b6
  hi TabLineFill cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#8b98b6 guifg=#cad0de
  hi TabLineSel cterm=NONE ctermbg=254 ctermfg=237 gui=NONE guibg=#e8e9ec guifg=#606374
  hi TermCursorNC ctermbg=244 ctermfg=254 guibg=#8389a3 guifg=#e8e9ec
  hi Title ctermfg=130 gui=NONE guifg=#c57339
  hi Todo ctermbg=254 ctermfg=64 guibg=#d4dbd1 guifg=#668e3d
  hi Type ctermfg=25 gui=NONE guifg=#2d539e
  hi Underlined cterm=underline ctermfg=25 gui=underline guifg=#2d539e term=underline
  hi VertSplit cterm=NONE ctermbg=251 ctermfg=251 gui=NONE guibg=#cad0de guifg=#cad0de
  hi Visual ctermbg=251 ctermfg=NONE guibg=#c9cdd7 guifg=NONE
  hi VisualNOS ctermbg=251 ctermfg=NONE guibg=#c9cdd7 guifg=NONE
  hi WildMenu ctermbg=235 ctermfg=252 guibg=#32364c guifg=#e8e9ec
  hi icebergNormalFg ctermfg=237 guifg=#33374c
  hi diffAdded ctermfg=64 guifg=#668e3d
  hi diffRemoved ctermfg=125 guifg=#cc517a
  hi ALEErrorSign ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi ALEWarningSign ctermbg=253 ctermfg=130 guibg=#dcdfe7 guifg=#c57339
  hi ALEVirtualTextError ctermfg=125 guifg=#cc517a
  hi ALEVirtualTextWarning ctermfg=130 guifg=#c57339
  hi CtrlPMode1 ctermbg=247 ctermfg=252 guibg=#9fa6c0 guifg=#e8e9ec
  hi EasyMotionShade ctermfg=250 guifg=#bbbecd
  hi EasyMotionTarget ctermfg=64 guifg=#668e3d
  hi EasyMotionTarget2First ctermfg=130 guifg=#c57339
  hi EasyMotionTarget2Second ctermfg=130 guifg=#c57339
  hi GitGutterAdd ctermbg=253 ctermfg=64 guibg=#dcdfe7 guifg=#668e3d
  hi GitGutterChange ctermbg=253 ctermfg=31 guibg=#dcdfe7 guifg=#3f83a6
  hi GitGutterChangeDelete ctermbg=253 ctermfg=31 guibg=#dcdfe7 guifg=#3f83a6
  hi GitGutterDelete ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi gitmessengerEndOfBuffer ctermbg=253 ctermfg=248 guibg=#dcdfe7 guifg=#9fa7bd
  hi gitmessengerPopupNormal ctermbg=253 ctermfg=237 guibg=#dcdfe7 guifg=#33374c
  hi Sneak ctermbg=97 ctermfg=254 guibg=#7759b4 guifg=#e8e9ec
  hi SneakScope ctermbg=251 ctermfg=244 guibg=#c9cdd7 guifg=#8389a3
  hi SyntasticErrorSign ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi SyntasticStyleErrorSign ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi SyntasticStyleWarningSign ctermbg=253 ctermfg=130 guibg=#dcdfe7 guifg=#c57339
  hi SyntasticWarningSign ctermbg=253 ctermfg=130 guibg=#dcdfe7 guifg=#c57339
  hi TSFunction ctermfg=237 guifg=#505695
  hi TSFunctionBuiltin ctermfg=237 guifg=#505695
  hi TSFunctionMacro ctermfg=237 guifg=#505695
  hi TSMethod ctermfg=237 guifg=#505695
  hi TSURI cterm=underline ctermfg=31 gui=underline guifg=#3f83a6 term=underline
  hi ZenSpace ctermbg=125 guibg=#cc517a
  hi DiagnosticUnderlineInfo cterm=underline ctermfg=31 gui=underline guisp=#3f83a6 term=underline
  hi DiagnosticInfo ctermfg=31 guifg=#3f83a6
  hi DiagnosticSignInfo ctermbg=253 ctermfg=31 guibg=#dcdfe7 guifg=#3f83a6
  hi DiagnosticUnderlineHint cterm=underline ctermfg=244 gui=underline guisp=#8389a3 term=underline
  hi DiagnosticHint ctermfg=244 guifg=#8389a3
  hi DiagnosticSignHint ctermbg=253 ctermfg=244 guibg=#dcdfe7 guifg=#8389a3
  hi DiagnosticUnderlineWarn cterm=underline ctermfg=130 gui=underline guisp=#c57339 term=underline
  hi DiagnosticWarn ctermfg=130 guifg=#c57339
  hi DiagnosticSignWarn ctermbg=253 ctermfg=130 guibg=#dcdfe7 guifg=#c57339
  hi DiagnosticUnderlineError cterm=underline ctermfg=125 gui=underline guisp=#cc517a term=underline
  hi DiagnosticError ctermfg=125 guifg=#cc517a
  hi DiagnosticSignError ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi DiagnosticFloatingHint ctermbg=251 ctermfg=237 guibg=#cad0de guifg=#33374c
  hi icebergALAccentRed ctermfg=125 guifg=#cc517a

  if has('nvim')
    let g:terminal_color_0 = '#dcdfe7'
    let g:terminal_color_1 = '#cc517a'
    let g:terminal_color_2 = '#668e3d'
    let g:terminal_color_3 = '#c57339'
    let g:terminal_color_4 = '#2d539e'
    let g:terminal_color_5 = '#7759b4'
    let g:terminal_color_6 = '#3f83a6'
    let g:terminal_color_7 = '#33374c'
    let g:terminal_color_8 = '#8389a3'
    let g:terminal_color_9 = '#cc3768'
    let g:terminal_color_10 = '#598030'
    let g:terminal_color_11 = '#b6662d'
    let g:terminal_color_12 = '#22478e'
    let g:terminal_color_13 = '#6845ad'
    let g:terminal_color_14 = '#327698'
    let g:terminal_color_15 = '#262a3f'
  else
    let g:terminal_ansi_colors = ['#dcdfe7', '#cc517a', '#668e3d', '#c57339', '#2d539e', '#7759b4', '#3f83a6', '#33374c', '#8389a3', '#cc3768', '#598030', '#b6662d', '#22478e', '#6845ad', '#327698', '#262a3f']
  endif
else
  hi Normal ctermbg=234 ctermfg=252 guibg=#161821 guifg=#c6c8d1
  hi ColorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=#1e2132 guifg=NONE
  hi CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=#1e2132 guifg=NONE
  hi CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=#1e2132 guifg=NONE
  hi Comment ctermfg=242 guifg=#6b7089
  hi Conceal ctermbg=234 ctermfg=242 guibg=#161821 guifg=#6b7089
  hi Constant ctermfg=140 guifg=#a093c7
  hi Cursor ctermbg=252 ctermfg=234 guibg=#c6c8d1 guifg=#161821
  hi CursorLineNr cterm=NONE ctermbg=237 ctermfg=253 guibg=#2a3158 guifg=#cdd1e6
  hi Delimiter ctermfg=252 guifg=#c6c8d1
  hi DiffAdd ctermbg=29 ctermfg=158 guibg=#45493e guifg=#c0c5b9
  hi DiffChange ctermbg=23 ctermfg=159 guibg=#384851 guifg=#b3c3cc
  hi DiffDelete cterm=NONE ctermbg=95 ctermfg=224 gui=NONE guibg=#53343b guifg=#ceb0b6
  hi DiffText cterm=NONE ctermbg=30 ctermfg=195 gui=NONE guibg=#5b7881 guifg=#c6c8d1
  hi Directory ctermfg=109 guifg=#89b8c2
  hi Error ctermbg=234 ctermfg=203 guibg=#161821 guifg=#e27878
  hi ErrorMsg ctermbg=234 ctermfg=203 guibg=#161821 guifg=#e27878
  hi WarningMsg ctermbg=234 ctermfg=203 guibg=#161821 guifg=#e27878
  hi EndOfBuffer ctermfg=236 guifg=#242940
  hi NonText ctermfg=236 guifg=#242940
  hi Whitespace ctermfg=236 guifg=#242940
  hi Folded ctermbg=235 ctermfg=245 guibg=#1e2132 guifg=#686f9a
  hi FoldColumn ctermbg=235 ctermfg=239 guibg=#1e2132 guifg=#444b71
  hi Function ctermfg=110 guifg=#84a0c6
  hi Identifier cterm=NONE ctermfg=109 guifg=#89b8c2
  hi Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  hi Include ctermfg=110 guifg=#84a0c6
  hi IncSearch cterm=reverse ctermfg=NONE gui=reverse guifg=NONE term=reverse
  hi LineNr ctermbg=235 ctermfg=239 guibg=#1e2132 guifg=#444b71
  hi MatchParen ctermbg=237 ctermfg=255 guibg=#3e445e guifg=#ffffff
  hi ModeMsg ctermfg=242 guifg=#6b7089
  hi MoreMsg ctermfg=150 guifg=#b4be82
  hi Operator ctermfg=110 guifg=#84a0c6
  hi Pmenu ctermbg=236 ctermfg=251 guibg=#3d425b guifg=#c6c8d1
  hi PmenuSbar ctermbg=236 ctermfg=NONE guibg=#3d425b guifg=NONE
  hi PmenuSel ctermbg=240 ctermfg=255 guibg=#5b6389 guifg=#eff0f4
  hi PmenuThumb ctermbg=251 ctermfg=NONE guibg=#c6c8d1 guifg=NONE
  hi PreProc ctermfg=150 guifg=#b4be82
  hi Question ctermfg=150 guifg=#b4be82
  hi QuickFixLine ctermbg=236 ctermfg=252 guibg=#272c42 guifg=#c6c8d1
  hi Search ctermbg=216 ctermfg=234 guibg=#e4aa80 guifg=#392313
  hi SignColumn ctermbg=235 ctermfg=239 guibg=#1e2132 guifg=#444b71
  hi Special ctermfg=150 guifg=#b4be82
  hi SpecialKey ctermfg=240 guifg=#515e97
  hi SpellBad ctermbg=95 ctermfg=252 gui=undercurl guifg=NONE guisp=#e27878
  hi SpellCap ctermbg=24 ctermfg=252 gui=undercurl guifg=NONE guisp=#84a0c6
  hi SpellLocal ctermbg=23 ctermfg=252 gui=undercurl guifg=NONE guisp=#89b8c2
  hi SpellRare ctermbg=97 ctermfg=252 gui=undercurl guifg=NONE guisp=#a093c7
  hi Statement ctermfg=110 gui=NONE guifg=#84a0c6
  hi StatusLine cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#17171b guifg=#818596 term=reverse
  hi StatusLineTerm cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#17171b guifg=#818596 term=reverse
  hi StatusLineNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#3e445e guifg=#0f1117
  hi StatusLineTermNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#3e445e guifg=#0f1117
  hi StorageClass ctermfg=110 guifg=#84a0c6
  hi String ctermfg=109 guifg=#89b8c2
  hi Structure ctermfg=110 guifg=#84a0c6
  hi TabLine cterm=NONE ctermbg=233 ctermfg=238 gui=NONE guibg=#0f1117 guifg=#3e445e
  hi TabLineFill cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#3e445e guifg=#0f1117
  hi TabLineSel cterm=NONE ctermbg=234 ctermfg=252 gui=NONE guibg=#161821 guifg=#9a9ca5
  hi TermCursorNC ctermbg=242 ctermfg=234 guibg=#6b7089 guifg=#161821
  hi Title ctermfg=216 gui=NONE guifg=#e2a478
  hi Todo ctermbg=234 ctermfg=150 guibg=#45493e guifg=#b4be82
  hi Type ctermfg=110 gui=NONE guifg=#84a0c6
  hi Underlined cterm=underline ctermfg=110 gui=underline guifg=#84a0c6 term=underline
  hi VertSplit cterm=NONE ctermbg=233 ctermfg=233 gui=NONE guibg=#0f1117 guifg=#0f1117
  hi Visual ctermbg=236 ctermfg=NONE guibg=#272c42 guifg=NONE
  hi VisualNOS ctermbg=236 ctermfg=NONE guibg=#272c42 guifg=NONE
  hi WildMenu ctermbg=255 ctermfg=234 guibg=#d4d5db guifg=#17171b
  hi icebergNormalFg ctermfg=252 guifg=#c6c8d1
  hi diffAdded ctermfg=150 guifg=#b4be82
  hi diffRemoved ctermfg=203 guifg=#e27878
  hi ALEErrorSign ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
  hi ALEWarningSign ctermbg=235 ctermfg=216 guibg=#1e2132 guifg=#e2a478
  hi ALEVirtualTextError ctermfg=203 guifg=#e27878
  hi ALEVirtualTextWarning ctermfg=216 guifg=#e2a478
  hi CtrlPMode1 ctermbg=236 ctermfg=242 guibg=#2e313f guifg=#6b7089
  hi EasyMotionShade ctermfg=239 guifg=#3d425b
  hi EasyMotionTarget ctermfg=150 guifg=#b4be82
  hi EasyMotionTarget2First ctermfg=216 guifg=#e2a478
  hi EasyMotionTarget2Second ctermfg=216 guifg=#e2a478
  hi GitGutterAdd ctermbg=235 ctermfg=150 guibg=#1e2132 guifg=#b4be82
  hi GitGutterChange ctermbg=235 ctermfg=109 guibg=#1e2132 guifg=#89b8c2
  hi GitGutterChangeDelete ctermbg=235 ctermfg=109 guibg=#1e2132 guifg=#89b8c2
  hi GitGutterDelete ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
  hi gitmessengerEndOfBuffer ctermbg=235 ctermfg=239 guibg=#1e2132 guifg=#444b71
  hi gitmessengerPopupNormal ctermbg=235 ctermfg=252 guibg=#1e2132 guifg=#c6c8d1
  hi Sneak ctermbg=140 ctermfg=234 guibg=#a093c7 guifg=#161821
  hi SneakScope ctermbg=236 ctermfg=242 guibg=#272c42 guifg=#6b7089
  hi SyntasticErrorSign ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
  hi SyntasticStyleErrorSign ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
  hi SyntasticStyleWarningSign ctermbg=235 ctermfg=216 guibg=#1e2132 guifg=#e2a478
  hi SyntasticWarningSign ctermbg=235 ctermfg=216 guibg=#1e2132 guifg=#e2a478
  hi TSFunction ctermfg=252 guifg=#a3adcb
  hi TSFunctionBuiltin ctermfg=252 guifg=#a3adcb
  hi TSFunctionMacro ctermfg=252 guifg=#a3adcb
  hi TSMethod ctermfg=252 guifg=#a3adcb
  hi TSURI cterm=underline ctermfg=109 gui=underline guifg=#89b8c2 term=underline
  hi ZenSpace ctermbg=203 guibg=#e27878
  hi DiagnosticUnderlineInfo cterm=underline ctermfg=109 gui=underline guisp=#89b8c2 term=underline
  hi DiagnosticInfo ctermfg=109 guifg=#89b8c2
  hi DiagnosticSignInfo ctermbg=235 ctermfg=109 guibg=#1e2132 guifg=#89b8c2
  hi DiagnosticUnderlineHint cterm=underline ctermfg=242 gui=underline guisp=#6b7089 term=underline
  hi DiagnosticHint ctermfg=242 guifg=#6b7089
  hi DiagnosticSignHint ctermbg=235 ctermfg=242 guibg=#1e2132 guifg=#6b7089
  hi DiagnosticUnderlineWarn cterm=underline ctermfg=216 gui=underline guisp=#e2a478 term=underline
  hi DiagnosticWarn ctermfg=216 guifg=#e2a478
  hi DiagnosticSignWarn ctermbg=235 ctermfg=216 guibg=#1e2132 guifg=#e2a478
  hi DiagnosticUnderlineError cterm=underline ctermfg=203 gui=underline guisp=#e27878 term=underline
  hi DiagnosticError ctermfg=203 guifg=#e27878
  hi DiagnosticSignError ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
  hi DiagnosticFloatingHint ctermbg=236 ctermfg=251 guibg=#3d425b guifg=#c6c8d1
  hi icebergALAccentRed ctermfg=203 guifg=#e27878

  if has('nvim')
    let g:terminal_color_0 = '#1e2132'
    let g:terminal_color_1 = '#e27878'
    let g:terminal_color_2 = '#b4be82'
    let g:terminal_color_3 = '#e2a478'
    let g:terminal_color_4 = '#84a0c6'
    let g:terminal_color_5 = '#a093c7'
    let g:terminal_color_6 = '#89b8c2'
    let g:terminal_color_7 = '#c6c8d1'
    let g:terminal_color_8 = '#6b7089'
    let g:terminal_color_9 = '#e98989'
    let g:terminal_color_10 = '#c0ca8e'
    let g:terminal_color_11 = '#e9b189'
    let g:terminal_color_12 = '#91acd1'
    let g:terminal_color_13 = '#ada0d3'
    let g:terminal_color_14 = '#95c4ce'
    let g:terminal_color_15 = '#d2d4de'
  else
    let g:terminal_ansi_colors = ['#1e2132', '#e27878', '#b4be82', '#e2a478', '#84a0c6', '#a093c7', '#89b8c2', '#c6c8d1', '#6b7089', '#e98989', '#c0ca8e', '#e9b189', '#91acd1', '#ada0d3', '#95c4ce', '#d2d4de']
  endif
endif

hi! link TermCursor Cursor
hi! link ToolbarButton TabLineSel
hi! link ToolbarLine TabLineFill
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot icebergNormalFg
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote icebergNormalFg
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link rustFuncCall icebergNormalFg
hi! link rustFuncName Title
hi! link rustType Constant
hi! link sassClass Special
hi! link shFunction icebergNormalFg
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar icebergNormalFg
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar icebergNormalFg
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched icebergNormalFg
hi! link deniteMatchedChar Title
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirDocSigilDelimiter String
hi! link elixirDocTest String
hi! link elixirExUnitMacro Statement
hi! link elixirExceptionDefine Statement
hi! link elixirFunctionDeclaration Title
hi! link elixirKeyword Statement
hi! link elixirModuleDeclaration icebergNormalFg
hi! link elixirModuleDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirStringDelimiter String
hi! link jsFlowMaybe icebergNormalFg
hi! link jsFlowObject icebergNormalFg
hi! link jsFlowType PreProc
hi! link graphqlName icebergNormalFg
hi! link graphqlOperator icebergNormalFg
hi! link gitmessengerHash Comment
hi! link gitmessengerHeader Statement
hi! link gitmessengerHistory Constant
hi! link jsArrowFunction Operator
hi! link jsClassDefinition icebergNormalFg
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall icebergNormalFg
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 icebergNormalFg
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial icebergNormalFg
hi! link svssBraces Delimiter
hi! link swiftIdentifier icebergNormalFg
hi! link TSAttribute Special
hi! link TSBoolean Constant
hi! link TSCharacter Constant
hi! link TSComment Comment
hi! link TSConstructor icebergNormalFg
hi! link TSConditional Statement
hi! link TSConstant Constant
hi! link TSConstBuiltin Constant
hi! link TSConstMacro Constant
hi! link TSError Error
hi! link TSException Statement
hi! link TSField icebergNormalFg
hi! link TSFloat Constant
hi! link TSInclude Statement
hi! link TSKeyword Statement
hi! link TSKeywordFunction Function
hi! link TSLabel Special
hi! link TSNamespace Statement
hi! link TSNumber Constant
hi! link TSOperator icebergNormalFg
hi! link TSParameter icebergNormalFg
hi! link TSParameterReference icebergNormalFg
hi! link TSProperty TSField
hi! link TSPunctDelimiter icebergNormalFg
hi! link TSPunctBracket icebergNormalFg
hi! link TSPunctSpecial Special
hi! link TSRepeat Statement
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape Special
hi! link TSTag htmlTagName
hi! link TSTagDelimiter htmlTagName
hi! link TSText icebergNormalFg
hi! link TSTitle Title
hi! link TSType Type
hi! link TSTypeBuiltin Type
hi! link TSVariable icebergNormalFg
hi! link TSVariableBuiltin Statement
hi! link typescriptAjaxMethods icebergNormalFg
hi! link typescriptBraces icebergNormalFg
hi! link typescriptEndColons icebergNormalFg
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties icebergNormalFg
hi! link typescriptIdentifier Statement
hi! link typescriptMessage icebergNormalFg
hi! link typescriptNull Constant
hi! link typescriptParens icebergNormalFg

if !has('nvim')
  hi! link SpecialKey Whitespace
endif
