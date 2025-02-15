" Fixes incorrect colors on some colorscheme.
" source: https://github.com/vim/vim/issues/993#issuecomment-255651605
set termguicolors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" Setup Variables: {{{
" Colors {{{

if !exists('g:srcery_black')
  let g:srcery_black='#1C1B19'
endif

if !exists('g:srcery_red')
  let g:srcery_red='#EF2F27'
endif

if !exists('g:srcery_green')
  let g:srcery_green='#519F50'
endif

if !exists('g:srcery_yellow')
  let g:srcery_yellow='#FBB829'
endif

if !exists('g:srcery_blue')
  let g:srcery_blue='#2C78BF'
endif

if !exists('g:srcery_magenta')
  let g:srcery_magenta='#E02C6D'
endif

if !exists('g:srcery_cyan')
  let g:srcery_cyan='#0AAEB3'
endif

if !exists('g:srcery_white')
  let g:srcery_white='#BAA67F'
endif

if !exists('g:srcery_bright_black')
  let g:srcery_bright_black='#918175'
endif

if !exists('g:srcery_bright_red')
  let g:srcery_bright_red='#F75341'
endif

if !exists('g:srcery_bright_green')
  let g:srcery_bright_green='#98BC37'
endif

if !exists('g:srcery_bright_yellow')
  let g:srcery_bright_yellow='#FED06E'
endif

if !exists('g:srcery_bright_blue')
  let g:srcery_bright_blue='#68A8E4'
endif

if !exists('g:srcery_bright_magenta')
  let g:srcery_bright_magenta='#FF5C8F'
endif

if !exists('g:srcery_bright_cyan')
  let g:srcery_bright_cyan='#2BE4D0'
endif

if !exists('g:srcery_bright_white')
  let g:srcery_bright_white='#FCE8C3'
endif

if !exists('g:srcery_orange')
  let g:srcery_orange='#FF5F00'
endif

if !exists('g:srcery_orange_cterm')
  let g:srcery_orange_cterm=202
endif

if !exists('g:srcery_bright_orange')
  let g:srcery_bright_orange='#FF8700'
endif

if !exists('g:srcery_bright_orange_cterm')
  let g:srcery_bright_orange_cterm=208
endif

if !exists('g:srcery_hard_black')
  let g:srcery_hard_black='#121212'
endif

if !exists('g:srcery_hard_black_cterm')
  let g:srcery_hard_black_cterm=233
endif

if !exists('g:srcery_xgray1')
  let g:srcery_xgray1='#262626'
endif

if !exists('g:srcery_xgray1_cterm')
  let g:srcery_xgray1_cterm=235
endif

if !exists('g:srcery_xgray2')
  let g:srcery_xgray2='#303030'
endif

if !exists('g:srcery_xgray2_cterm')
  let g:srcery_xgray2_cterm=236
endif

if !exists('g:srcery_xgray3')
  let g:srcery_xgray3='#3A3A3A'
endif

if !exists('g:srcery_xgray3_cterm')
  let g:srcery_xgray3_cterm=237
endif

if !exists('g:srcery_xgray4')
  let g:srcery_xgray4='#444444'
endif

if !exists('g:srcery_xgray4_cterm')
  let g:srcery_xgray4_cterm=238
endif

if !exists('g:srcery_xgray5')
  let g:srcery_xgray5='#4E4E4E'
endif

if !exists('g:srcery_xgray5_cterm')
  let g:srcery_xgray5_cterm=239
endif

if !exists('g:srcery_xgray6')
  let g:srcery_xgray6='#585858'
endif

if !exists('g:srcery_xgray6_cterm')
  let g:srcery_xgray6_cterm=240
endif

" }}}
" Options {{{

if !exists('g:srcery_bold')
  let g:srcery_bold=1
endif

if !exists('g:srcery_italic')
  if has('gui_running') || $TERM_ITALICS ==? 'true'
    let g:srcery_italic=1
  else
    let g:srcery_italic=0
  endif
endif

if !exists('g:srcery_undercurl')
  let g:srcery_undercurl=1
endif

if !exists('g:srcery_underline')
  let g:srcery_underline=1
endif

if !exists('g:srcery_inverse')
  let g:srcery_inverse=1
endif

if !exists('g:srcery_inverse_matches')
  let g:srcery_inverse_matches=0
endif

if !exists('g:srcery_inverse_match_paren')
  let g:srcery_inverse_match_paren=0
endif

if !exists('g:srcery_dim_lisp_paren')
  let g:srcery_dim_lisp_paren=0
endif

if !exists('g:srcery_guisp_fallback') || index(['fg', 'bg'], g:srcery_guisp_fallback) == -1
  let g:srcery_guisp_fallback='NONE'
endif

if !exists('g:srcery_italic_types')
  let g:srcery_italic_types=0
endif

if !exists('g:srcery_bg')
  "Sets the default color for both guisp and cterm backgrounds.
  let g:srcery_bg=[g:srcery_black, 0]
elseif (index(g:srcery_bg, 'DEFAULT') >= 0) || (index(g:srcery_bg, 'NONE') >= 0 && has('gui_running'))
  "Defaults should be set if the user specifies it, or if the background is set as 'NONE' whilst the gui is running.
  for i in [0, 1]
    if g:srcery_bg[i] ==# 'DEFAULT' || (g:srcery_bg[i] ==# 'NONE' && has('gui_running'))
      let g:srcery_bg[i] = (i==1 ? 0 : g:srcery_black)
    endif
  endfor
endif

if !exists('g:srcery_hard_black_terminal_bg')
  let g:srcery_hard_black_terminal_bg=1
endif

" }}}
" }}}
" Palette: {{{

let g:srcery#palette                = {}
let g:srcery#palette.none           = ['NONE', 'NONE']

" 16 base colors
let g:srcery#palette.black          = [g:srcery_black, 0]
let g:srcery#palette.red            = [g:srcery_red, 1]
let g:srcery#palette.green          = [g:srcery_green, 2]
let g:srcery#palette.yellow         = [g:srcery_yellow, 3]
let g:srcery#palette.blue           = [g:srcery_blue, 4]
let g:srcery#palette.magenta        = [g:srcery_magenta, 5]
let g:srcery#palette.cyan           = [g:srcery_cyan, 6]
let g:srcery#palette.white          = [g:srcery_white, 7]
let g:srcery#palette.bright_black   = [g:srcery_bright_black, 8]
let g:srcery#palette.bright_red     = [g:srcery_bright_red, 9]
let g:srcery#palette.bright_green   = [g:srcery_bright_green, 10]
let g:srcery#palette.bright_yellow  = [g:srcery_bright_yellow, 11]
let g:srcery#palette.bright_blue    = [g:srcery_bright_blue, 12]
let g:srcery#palette.bright_magenta = [g:srcery_bright_magenta, 13]
let g:srcery#palette.bright_cyan    = [g:srcery_bright_cyan, 14]
let g:srcery#palette.bright_white   = [g:srcery_bright_white, 15]

" xterm colors
let g:srcery#palette.orange         = [g:srcery_orange,
                                    \  g:srcery_orange_cterm]
let g:srcery#palette.bright_orange  = [g:srcery_bright_orange,
                                    \  g:srcery_bright_orange_cterm]
let g:srcery#palette.hard_black     = [g:srcery_hard_black,
                                    \  g:srcery_hard_black_cterm]
let g:srcery#palette.xgray1         = [g:srcery_xgray1, g:srcery_xgray1_cterm]
let g:srcery#palette.xgray2         = [g:srcery_xgray2, g:srcery_xgray2_cterm]
let g:srcery#palette.xgray3         = [g:srcery_xgray3, g:srcery_xgray3_cterm]
let g:srcery#palette.xgray4         = [g:srcery_xgray4, g:srcery_xgray4_cterm]
let g:srcery#palette.xgray5         = [g:srcery_xgray5, g:srcery_xgray5_cterm]
let g:srcery#palette.xgray6         = [g:srcery_xgray6, g:srcery_xgray6_cterm]

" }}}
" Setup Emphasis: {{{

let g:srcery#palette.bold = 'bold,'
if g:srcery_bold == 0
  let g:srcery#palette.bold = ''
endif

let g:srcery#palette.italic = 'italic,'
if g:srcery_italic == 0
  let g:srcery#palette.italic = ''
endif

let g:srcery#palette.underline = 'underline,'
if g:srcery_underline == 0
  let g:srcery#palette.underline = ''
endif

let g:srcery#palette.undercurl = 'undercurl,'
if g:srcery_undercurl == 0
  let g:srcery#palette.undercurl = ''
endif

let g:srcery#palette.inverse = 'inverse,'
if g:srcery_inverse == 0
  let g:srcery#palette.inverse = ''
endif

" }}}

" Setup Terminal Colors For Neovim: {{{

if has('nvim')
  let g:terminal_color_0 = g:srcery#palette.black[0]
  let g:terminal_color_8 = g:srcery#palette.bright_black[0]

  let g:terminal_color_1 = g:srcery#palette.red[0]
  let g:terminal_color_9 = g:srcery#palette.bright_red[0]

  let g:terminal_color_2 = g:srcery#palette.green[0]
  let g:terminal_color_10 = g:srcery#palette.bright_green[0]

  let g:terminal_color_3 = g:srcery#palette.yellow[0]
  let g:terminal_color_11 = g:srcery#palette.bright_yellow[0]

  let g:terminal_color_4 = g:srcery#palette.blue[0]
  let g:terminal_color_12 = g:srcery#palette.bright_blue[0]

  let g:terminal_color_5 = g:srcery#palette.magenta[0]
  let g:terminal_color_13 = g:srcery#palette.bright_magenta[0]

  let g:terminal_color_6 = g:srcery#palette.cyan[0]
  let g:terminal_color_14 = g:srcery#palette.bright_cyan[0]

  let g:terminal_color_7 = g:srcery#palette.white[0]
  let g:terminal_color_15 = g:srcery#palette.bright_white[0]
endif

" }}}
" Setup Terminal Colors For Vim with termguicolors: {{{

if exists('*term_setansicolors')
  let g:terminal_ansi_colors = repeat([0], 16)

  let g:terminal_ansi_colors[0] = g:srcery#palette.black[0]
  let g:terminal_ansi_colors[8] = g:srcery#palette.bright_black[0]

  let g:terminal_ansi_colors[1] = g:srcery#palette.red[0]
  let g:terminal_ansi_colors[9] = g:srcery#palette.bright_red[0]

  let g:terminal_ansi_colors[2] = g:srcery#palette.green[0]
  let g:terminal_ansi_colors[10] = g:srcery#palette.bright_green[0]

  let g:terminal_ansi_colors[3] = g:srcery#palette.yellow[0]
  let g:terminal_ansi_colors[11] = g:srcery#palette.bright_yellow[0]

  let g:terminal_ansi_colors[4] = g:srcery#palette.blue[0]
  let g:terminal_ansi_colors[12] = g:srcery#palette.bright_blue[0]

  let g:terminal_ansi_colors[5] = g:srcery#palette.magenta[0]
  let g:terminal_ansi_colors[13] = g:srcery#palette.bright_magenta[0]

  let g:terminal_ansi_colors[6] = g:srcery#palette.cyan[0]
  let g:terminal_ansi_colors[14] = g:srcery#palette.bright_cyan[0]

  let g:terminal_ansi_colors[7] = g:srcery#palette.white[0]
  let g:terminal_ansi_colors[15] = g:srcery#palette.bright_white[0]
endif

" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
" 'srcery.vim' -- Vim color scheme.
" Maintainer:   Roosta (mail@roosta.sh)
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.
" Original Source: https://github.com/morhetz/gruvbox

scriptencoding utf-8

set background=dark

if v:version > 580
  hi clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name='srcery'

if !has('gui_running') && &t_Co != 256
  finish
endif

" Palette {{{

let s:none           = g:srcery#palette.none

" 16 base colors
let s:black          = g:srcery#palette.black
let s:red            = g:srcery#palette.red
let s:green          = g:srcery#palette.green
let s:yellow         = g:srcery#palette.yellow
let s:blue           = g:srcery#palette.blue
let s:magenta        = g:srcery#palette.magenta
let s:cyan           = g:srcery#palette.cyan
let s:white          = g:srcery#palette.white
let s:bright_black   = g:srcery#palette.bright_black
let s:bright_red     = g:srcery#palette.bright_red
let s:bright_green   = g:srcery#palette.bright_green
let s:bright_yellow  = g:srcery#palette.bright_yellow
let s:bright_blue    = g:srcery#palette.bright_blue
let s:bright_magenta = g:srcery#palette.bright_magenta
let s:bright_cyan    = g:srcery#palette.bright_cyan
let s:bright_white   = g:srcery#palette.bright_white

" xterm colors
let s:orange         = g:srcery#palette.orange
let s:bright_orange  = g:srcery#palette.bright_orange
let s:hard_black     = g:srcery#palette.hard_black
let s:xgray1         = g:srcery#palette.xgray1
let s:xgray2         = g:srcery#palette.xgray2
let s:xgray3         = g:srcery#palette.xgray3
let s:xgray4         = g:srcery#palette.xgray4
let s:xgray5         = g:srcery#palette.xgray5
let s:xgray6         = g:srcery#palette.xgray6

"}}}
" Setup Emphasis: {{{

let s:bold      = g:srcery#palette.bold
let s:italic    = g:srcery#palette.italic
let s:underline = g:srcery#palette.underline
let s:undercurl = g:srcery#palette.undercurl
let s:inverse   = g:srcery#palette.inverse

" }}}

" Highlighting Function: {{{

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let l:fg = a:fg

  " background
  if a:0 >= 1
    let l:bg = a:1
  else
    let l:bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let l:emstr = a:2
  else
    let l:emstr = 'NONE,'
  endif

  " special fallback
  if a:0 >= 3
    if g:srcery_guisp_fallback !=# 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert higlighting
    if g:srcery_guisp_fallback ==# 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let l:histring = [ 'hi', a:group,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:emstr[:-2], 'cterm=' . l:emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(l:histring, 'guisp=' . a:3[0])
  endif

  execute join(l:histring, ' ')
endfunction

"}}}
" Srcery Hi Groups: {{{

" memoize common hi groups
call s:HL('SrceryRed', s:red)
call s:HL('SrceryGreen', s:green)
call s:HL('SrceryYellow', s:yellow)
call s:HL('SrceryBlue', s:blue)
call s:HL('SrceryMagenta', s:magenta)
call s:HL('SrceryCyan', s:cyan)
call s:HL('SrceryBlack', s:black)
call s:HL('SrceryWhite', s:white)

call s:HL('SrceryRedBold', s:red, s:none, s:bold)
call s:HL('SrceryGreenBold', s:green, s:none, s:bold)
call s:HL('SrceryYellowBold', s:yellow, s:none, s:bold)
call s:HL('SrceryBlueBold', s:blue, s:none, s:bold)
call s:HL('SrceryMagentaBold', s:magenta, s:none, s:bold)
call s:HL('SrceryCyanBold', s:cyan, s:none, s:bold)
call s:HL('SrceryBlackBold', s:black, s:none, s:bold)
call s:HL('SrceryWhiteBold', s:white, s:none, s:bold)

call s:HL('SrceryBrightRed', s:bright_red, s:none)
call s:HL('SrceryBrightGreen', s:bright_green, s:none)
call s:HL('SrceryBrightYellow', s:bright_yellow, s:none)
call s:HL('SrceryBrightBlue', s:bright_blue, s:none)
call s:HL('SrceryBrightMagenta', s:bright_magenta, s:none)
call s:HL('SrceryBrightCyan', s:bright_cyan, s:none)
call s:HL('SrceryBrightBlack', s:bright_black, s:none)
call s:HL('SrceryBrightWhite', s:bright_white)

call s:HL('SrceryBrightRedBold', s:bright_red, s:none, s:bold)
call s:HL('SrceryBrightGreenBold', s:bright_green, s:none, s:bold)
call s:HL('SrceryBrightYellowBold', s:bright_yellow, s:none, s:bold)
call s:HL('SrceryBrightBlueBold', s:bright_blue, s:none, s:bold)
call s:HL('SrceryBrightMagentaBold', s:bright_magenta, s:none, s:bold)
call s:HL('SrceryBrightCyanBold', s:bright_cyan, s:none, s:bold)
call s:HL('SrceryBrightBlackBold', s:bright_black, s:none, s:bold)
call s:HL('SrceryBrightWhiteBold', s:bright_white, s:none, s:bold)

" special
call s:HL('SrceryOrange', s:orange)
call s:HL('SrceryBrightOrange', s:bright_orange)
call s:HL('SrceryOrangeBold', s:orange, s:none, s:bold)
call s:HL('SrceryHardBlack', s:hard_black)
call s:HL('SrceryXgray1', s:xgray1)
call s:HL('SrceryXgray2', s:xgray2)
call s:HL('SrceryXgray3', s:xgray3)
call s:HL('SrceryXgray4', s:xgray4)
call s:HL('SrceryXgray5', s:xgray5)
call s:HL('SrceryXgray6', s:xgray6)

" }}}

" Vanilla colorscheme ---------------------------------------------------------
" General UI: {{{

" Normal text
"
call s:HL('Normal', s:bright_white, g:srcery_bg)

if v:version >= 700
  " Screen line that the cursor is
  call s:HL('CursorLine',   s:none, s:xgray2)
  " Screen column that the cursor is
  hi! link CursorColumn CursorLine

  call s:HL('TabLineFill', s:bright_black, s:xgray2)
  call s:HL('TabLineSel', s:bright_white, s:xgray5)

  " Not active tab page label
  hi! link TabLine TabLineFill

  " Match paired bracket under the cursor
  "
  if g:srcery_inverse_match_paren == 1
    call s:HL('MatchParen', s:bright_magenta, s:none, s:inverse . s:bold)
  else
    call s:HL('MatchParen', s:bright_magenta, s:none, s:bold)
  endif
endif

if v:version >= 703
  " Highlighted screen columns
  call s:HL('ColorColumn',  s:none, s:xgray2)

  " Concealed element: \lambda → λ
  call s:HL('Conceal', s:blue, s:none)

  " Line number of CursorLine
  call s:HL('CursorLineNr', s:yellow, g:srcery_bg)

endif

hi! link NonText SrceryXgray4
hi! link SpecialKey SrceryBlue

if g:srcery_inverse == 1
  call s:HL('Visual', s:none, s:none, s:inverse)
else
  call s:HL('Visual', s:none, s:xgray2, s:bold)
endif

hi! link VisualNOS Visual

if g:srcery_inverse == 1 && g:srcery_inverse_matches == 1
  call s:HL('Search', s:none, s:none, s:inverse)
  call s:HL('IncSearch', s:none, s:none, s:inverse)
else
  call s:HL('Search', s:none, s:xgray5, s:bold)
  call s:HL('IncSearch', s:none, s:xgray5, s:underline . s:bold)
endif

call s:HL('Underlined', s:blue, s:none, s:underline)

call s:HL('StatusLine',   s:bright_white, s:xgray2)

call s:HL('StatusLineNC', s:bright_black, g:srcery_bg, s:underline)
" The column separating vertically split windows
call s:HL('VertSplit', s:bright_white, g:srcery_bg)
" Current match in wildmenu completion
call s:HL('WildMenu', s:blue, g:srcery_bg, s:bold)

" Directory names, special names in listing
hi! link Directory SrceryGreenBold

" Titles for output from :set all, :autocmd, etc.
hi! link Title SrceryGreenBold

" Error messages on the command line
call s:HL('ErrorMsg', s:bright_white, s:red)
" More prompt: -- More --
hi! link MoreMsg SrceryYellowBold
" Current mode message: -- INSERT --
hi! link ModeMsg SrceryYellowBold
" 'Press enter' prompt and yes/no questions
hi! link Question SrceryOrangeBold
" Warning messages
hi! link WarningMsg SrceryRedBold

" }}}
" Gutter: {{{

" Line number for :number and :# commands
call s:HL('LineNr', s:bright_black)

" Column where signs are displayed
" TODO Possibly need to fix  SignColumn
call s:HL('SignColumn', s:none, g:srcery_bg)
" Line used for closed folds
call s:HL('Folded', s:bright_black, g:srcery_bg, s:italic)
" Column where folds are displayed
call s:HL('FoldColumn', s:bright_black, g:srcery_bg)

" }}}
" Cursor: {{{

" Character under cursor
call s:HL('Cursor', s:black, s:yellow)
" Visual mode cursor, selection
hi! link vCursor Cursor
" Input moder cursor
hi! link iCursor Cursor
" Language mapping cursor
hi! link lCursor Cursor

" }}}
" Syntax Highlighting: {{{

hi! link Special SrceryOrange

call s:HL('Comment', s:bright_black, s:none, s:italic)

call s:HL('Todo', s:bright_white, g:srcery_bg, s:bold . s:italic)

call s:HL('Error', s:bright_white, s:red, s:bold)

" String constant: "this is a string"
call s:HL('String',  s:bright_green)

" Generic statement
hi! link Statement SrceryRed
" if, then, else, endif, swicth, etc.
hi! link Conditional SrceryRed
" for, do, while, etc.
hi! link Repeat SrceryRed
" case, default, etc.
hi! link Label SrceryRed
" try, catch, throw
hi! link Exception SrceryRed
" sizeof, "+", "*", etc.
hi! link Operator SrceryBrightWhite
" Any other keyword
hi! link Keyword SrceryRed

" Variable name
hi! link Identifier SrceryCyan
" Function name
hi! link Function SrceryYellow

" Generic preprocessor
hi! link PreProc SrceryCyan
" Preprocessor #include
hi! link Include SrceryCyan
" Preprocessor #define
hi! link Define SrceryCyan
" Same as Define
hi! link Macro SrceryOrange
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit SrceryCyan

" Generic constant
hi! link Constant SrceryBrightMagenta
" Character constant: 'c', '/n'
hi! link Character SrceryBrightMagenta
" Boolean constant: TRUE, false
hi! link Boolean SrceryBrightMagenta
" Number constant: 234, 0xff
hi! link Number SrceryBrightMagenta
" Floating point constant: 2.3e10
hi! link Float SrceryBrightMagenta

" Generic type
if g:srcery_italic_types == 1 && g:srcery_italic == 1
  call s:HL('Type', s:bright_blue, s:none, s:italic)
else
  hi! link Type SrceryBrightBlue
end
" static, register, volatile, etc
hi! link StorageClass SrceryOrange
" struct, union, enum, etc.
hi! link Structure SrceryCyan
" typedef
hi! link Typedef SrceryMagenta

if g:srcery_dim_lisp_paren == 1
  hi! link Delimiter SrceryXgray6
else
  hi! link Delimiter SrceryBrightBlack
endif

" }}}
" Completion Menu: {{{

if v:version >= 700
  " Popup menu: normal item
  call s:HL('Pmenu', s:bright_white, s:xgray2)
  " Popup menu: selected item
  call s:HL('PmenuSel', s:bright_white, s:blue, s:bold)

  " Popup menu: scrollbar
  call s:HL('PmenuSbar', s:none, g:srcery_bg)
  " Popup menu: scrollbar thumb
  call s:HL('PmenuThumb', s:none, s:orange)
endif

" }}}
" Diffs: {{{

call s:HL('DiffDelete', s:red, g:srcery_bg)
call s:HL('DiffAdd',    s:green, g:srcery_bg)
call s:HL('DiffChange', s:cyan, g:srcery_bg)
call s:HL('DiffText',   s:yellow, g:srcery_bg)

" }}}
" Spelling: {{{

if has('spell')
  " Not capitalised word, or compile warnings
  call s:HL('SpellCap',   s:green, s:none, s:bold . s:italic)
  " Not recognized word
  call s:HL('SpellBad',   s:none, s:none, s:undercurl, s:blue)
  " Wrong spelling for selected region
  call s:HL('SpellLocal', s:none, s:none, s:undercurl, s:cyan)
  " Rare word
  call s:HL('SpellRare',  s:none, s:none, s:undercurl, s:magenta)
endif

" }}}
" Terminal: {{{

if g:srcery_hard_black_terminal_bg == 1 && has('terminal')
  " Must set an explicit background as NONE won't work
  " Therefore not useful with transparent background option
  call s:HL('Terminal', s:bright_white, s:hard_black)
endif
" }}}
" Neovim LSP: {{{

if has('nvim')
  " for backward compatibility with neovim v0.5.x
  hi! link LspDiagnosticsDefaultError DiagnosticError
  hi! link LspDiagnosticsDefaultWarning DiagnosticWarn
  hi! link LspDiagnosticsDefaultInformation DiagnosticInfo
  hi! link LspDiagnosticsDefaultHint DiagnosticHint
  hi! link LspDiagnosticsUnderlineError DiagnosticUnderlineError
  hi! link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
  hi! link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
  hi! link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn

  " latest hl groups
  hi! link DiagnosticError SrceryBrightRed
  hi! link DiagnosticWarn SrceryBrightYellow
  hi! link DiagnosticInfo SrceryBrightGreen
  hi! link DiagnosticHint SrceryBrightCyan
  call s:HL('DiagnosticUnderlineError', s:bright_red, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineWarn', s:bright_yellow, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineInfo', s:bright_green, s:none, s:undercurl)
  call s:HL('DiagnosticUnderlineHint', s:bright_cyan, s:none, s:undercurl)
endif

" }}}

" Filetype specific -----------------------------------------------------------
" Diff: {{{

hi! link diffAdded SrceryGreen
hi! link diffRemoved SrceryRed
hi! link diffChanged SrceryCyan

hi! link diffFile SrceryOrange
hi! link diffNewFile SrceryYellow

hi! link diffLine SrceryBlue

" }}}
" Misc: {{{

call s:HL('ExtraWhitespace', s:none, s:red)
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker :
