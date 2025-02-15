" Fixes incorrect colors on some colorscheme.
" source: https://github.com/vim/vim/issues/993#issuecomment-255651605
set termguicolors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" Color Scheme: CandyPaper
" Author: DF_XYZ <dfxyz1@gmail.com>
" License: MIT
" Source: http://github.com/dfxyz/CandyPaper.vim
" Last Change: 2022-9-12

hi clear
let g:colors_name = 'CandyPaper'

if &bg == 'light'
    hi clear Normal
    hi Normal guifg=#406080 guibg=#F4FFE8
    hi clear Identifier
    hi Identifier guifg=#406080
    hi clear Operator
    hi Operator guifg=#406080
    hi clear Delimiter
    hi Delimiter guifg=#406080
    hi clear Number
    hi Number guifg=#CC6800
    hi clear PreProc
    hi PreProc guifg=#806800
    hi clear SpecialComment
    hi SpecialComment guifg=#806800
    hi clear Comment
    hi Comment guifg=#5C8000
    hi clear Boolean
    hi Boolean guifg=#008000
    hi clear Statement
    hi Statement guifg=#008000
    hi clear Type
    hi Type guifg=#008000
    hi clear Include
    hi Include guifg=#008000
    hi clear String
    hi String guifg=#008C8C
    hi clear Character
    hi Character guifg=#008C8C
    hi clear Special
    hi Special guifg=#0000C0
    hi clear Tag
    hi Tag guifg=#0000FF
    hi clear Underlined
    hi Underlined guifg=#0000FF gui=underline
    hi clear Constant
    hi Constant guifg=#C000C0
    hi clear Error
    hi Error guibg=#FFC0C0
    hi clear Todo
    hi Todo guibg=#FFFF68
    hi clear Question
    hi Question guifg=#008000
    hi clear Directory
    hi Directory guifg=#0000C0
    hi clear Title
    hi Title guifg=#0000C0
    hi clear SpecialKey
    hi SpecialKey guifg=#0000C0
    hi clear NonText
    hi NonText guifg=#9CA89C
    hi clear ModeMsg
    hi ModeMsg guifg=#406080
    hi clear MoreMsg
    hi MoreMsg guifg=#008000
    hi clear ErrorMsg
    hi ErrorMsg guifg=#CC0000
    hi clear WarningMsg
    hi WarningMsg guifg=#806800
    hi clear Folded
    hi Folded guifg=#6090C0 guibg=#DCF4E8
    hi clear MatchParen
    hi MatchParen guibg=#9CF4F4
    hi clear ColorColumn
    hi ColorColumn guibg=#B8CCB8
    hi clear CursorLine
    hi CursorLine guibg=#F0F8D4
    hi clear CursorColumn
    hi CursorColumn guibg=#F0F8D4
    hi clear LineNr
    hi LineNr guifg=#9CA89C
    hi clear CursorLineNr
    hi CursorLineNr guifg=#406080 guibg=#F0F8D4
    hi clear FoldColumn
    hi FoldColumn guifg=#6090C0
    hi clear CursorLineFold
    hi CursorLineFold guifg=#406080 guibg=#F0F8D4
    hi clear SignColumn
    hi SignColumn guifg=#6090C0
    hi clear CursorLineSign
    hi CursorLineSign guifg=#406080 guibg=#F0F8D4
    hi clear VertSplit
    hi VertSplit guifg=#9CA89C
    hi clear StatusLine
    hi StatusLine guifg=#406080 guibg=#C8F8C8
    hi clear StatusLineNC
    hi StatusLineNC guifg=#9CA89C guibg=#D4E8D4
    hi clear StatusLineTerm
    hi StatusLineTerm guifg=#406080 guibg=#C8F8C8
    hi clear StatusLineTermNC
    hi StatusLineTermNC guifg=#9CA89C guibg=#D4E8D4
    hi clear TabLineSel
    hi TabLineSel guifg=#406080
    hi clear TabLine
    hi TabLine guifg=#9CA89C guibg=#D4E8D4
    hi clear TabLineFill
    hi TabLineFill guibg=#D4E8D4
    hi clear Visual
    hi Visual guibg=#D0F4AC
    hi clear Search
    hi Search guifg=#406080 guibg=#A8FFA8
    hi clear PmenuSel
    hi PmenuSel guibg=#C8F8C8
    hi clear Pmenu
    hi Pmenu guibg=#E8F4E8
    hi clear PmenuSbar
    hi PmenuSbar guibg=#E8F4E8
    hi clear PmenuThumb
    hi PmenuThumb guibg=#8C988C
    hi clear WildMenu
    hi WildMenu guibg=#FFFF68
    hi clear DiffAdd
    hi DiffAdd guibg=#D0F4D0
    hi clear DiffText
    hi DiffText guibg=#D0E0F4
    hi clear DiffChange
    hi DiffChange guibg=#E8ECF4
    hi clear DiffDelete
    hi DiffDelete guifg=#9CA89C guibg=#E0E8E0
    hi clear SpellBad
    hi SpellBad guibg=#FFE8E8
    hi clear SpellLocal
    hi SpellLocal guibg=#DCF4F4
    hi clear SpellCap
    hi SpellCap guibg=#E8E8FF
    hi clear SpellRare
    hi SpellRare guibg=#FFE8FF
    hi clear lspReference
    hi lspReference guibg=#F4F4FF
    hi clear cssPseudoClassId
    hi cssPseudoClassId guifg=#406080
    hi clear cssUnitDecorators
    hi cssUnitDecorators guifg=#406080
    hi clear cssFontDescriptorAttr
    hi cssFontDescriptorAttr guifg=#CC6800
    hi clear cssAtKeyword
    hi cssAtKeyword guifg=#008000
    hi clear cssIdentifier
    hi cssIdentifier guifg=#008000
    hi clear cssImportant
    hi cssImportant guifg=#008000
    hi clear cssAttr
    hi cssAttr guifg=#008C8C
    hi clear cssUrl
    hi cssUrl guifg=#0000C0
    hi clear cssProp
    hi cssProp guifg=#6000C0
    hi clear cssAttributeSelector
    hi cssAttributeSelector guifg=#6000C0
    hi clear goBuiltins
    hi goBuiltins guifg=#008000
    hi clear helpHyperTextJump
    hi helpHyperTextJump guifg=#0000FF
    hi clear htmlTitle
    hi htmlTitle guifg=#406080
    hi clear htmlH1
    hi htmlH1 guifg=#406080
    hi clear htmlTagN
    hi htmlTagN guifg=#008000
    hi clear htmlSpecialChar
    hi htmlSpecialChar guifg=#0000C0
    hi clear htmlArg
    hi htmlArg guifg=#6000C0
    hi clear javaCommentTitle
    hi javaCommentTitle guifg=#5C8000
    hi clear javaConstant
    hi javaConstant guifg=#008000
    hi clear javaDocTags
    hi javaDocTags guifg=#806800
    hi clear jsonNull
    hi jsonNull guifg=#C000C0
    hi clear jsonBoolean
    hi jsonBoolean guifg=#C000C0
    hi clear javaScriptNumber
    hi javaScriptNumber guifg=#CC6800
    hi clear javaScriptFunction
    hi javaScriptFunction guifg=#008000
    hi clear javaScriptIdentifier
    hi javaScriptIdentifier guifg=#008000
    hi clear markdownRule
    hi markdownRule guifg=#008000
    hi clear markdownHeadingRule
    hi markdownHeadingRule guifg=#008000
    hi clear markdownHeadingDelimiter
    hi markdownHeadingDelimiter guifg=#008000
    hi clear markdownCode
    hi markdownCode guifg=#008C8C
    hi clear markdownCodeBlock
    hi markdownCodeBlock guifg=#008C8C
    hi clear markdownUrl
    hi markdownUrl guifg=#0000C0
    hi clear markdownLinkText
    hi markdownLinkText guifg=#0000C0
    hi clear markdownId
    hi markdownId guifg=#008000
    hi clear markdownIdDeclaration
    hi markdownIdDeclaration guifg=#008000
    hi clear pythonExceptions
    hi pythonExceptions guifg=#406080
    hi clear pythonDecoratorName
    hi pythonDecoratorName guifg=#806800
    hi clear pythonBuiltin
    hi pythonBuiltin guifg=#008000
    hi clear rustMacroRepeatDelimiters
    hi rustMacroRepeatDelimiters guifg=#406080
    hi clear rustQuestionMark
    hi rustQuestionMark guifg=#406080
    hi clear rustCommentLineDoc
    hi rustCommentLineDoc guifg=#5C8000
    hi clear rustSelf
    hi rustSelf guifg=#008000
    hi clear rustLabel
    hi rustLabel guifg=#008C8C
    hi clear rustLifetime
    hi rustLifetime guifg=#008C8C
    hi clear rustModPath
    hi rustModPath guifg=#0000C0
    hi clear rustIdentifier
    hi rustIdentifier guifg=#0000C0
    hi clear rustEnum
    hi rustEnum guifg=#0000C0
    hi clear rustTrait
    hi rustTrait guifg=#0000C0
    hi clear rustMacroVariable
    hi rustMacroVariable guifg=#C000C0
    hi clear shCommandSub
    hi shCommandSub guifg=#406080
    hi clear shStatement
    hi shStatement guifg=#406080
    hi clear shTestOpr
    hi shTestOpr guifg=#406080
    hi clear shCmdSubRegion
    hi shCmdSubRegion guifg=#008000
    hi clear shFunctionKey
    hi shFunctionKey guifg=#008000
    hi clear shHereDoc01
    hi shHereDoc01 guifg=#008000
    hi clear shLoop
    hi shLoop guifg=#008000
    hi clear shFor
    hi shFor guifg=#C000C0
    hi clear shDeref
    hi shDeref guifg=#C000C0
    hi clear shVariable
    hi shVariable guifg=#C000C0
    hi clear tomlKey
    hi tomlKey guifg=#008000
    hi clear tomlKeyDq
    hi tomlKeyDq guifg=#008000
    hi clear tomlTable
    hi tomlTable guifg=#008000
    hi clear tomlBoolean
    hi tomlBoolean guifg=#C000C0
    hi clear xmlCdataStart
    hi xmlCdataStart guifg=#806800
    hi clear xmlCdataCdata
    hi xmlCdataCdata guifg=#806800
    hi clear xmlCdataEnd
    hi xmlCdataEnd guifg=#806800
    hi clear xmlTagName
    hi xmlTagName guifg=#008000
    hi clear xmlNamespace
    hi xmlNamespace guifg=#0000C0
    hi clear xmlEntity
    hi xmlEntity guifg=#0000C0
    hi clear xmlEntityPunct
    hi xmlEntityPunct guifg=#0000C0
    hi clear xmlAttrib
    hi xmlAttrib guifg=#6000C0
    hi clear yamlKeyValueDelimiter
    hi yamlKeyValueDelimiter guifg=#406080
    hi clear yamlAnchor
    hi yamlAnchor guifg=#806800
    hi clear yamlAlias
    hi yamlAlias guifg=#806800
    hi clear yamlBlockMappingKey
    hi yamlBlockMappingKey guifg=#008000
else
    hi clear Normal
    hi Normal guifg=#94A8A8 guibg=#202820
    hi clear Identifier
    hi Identifier guifg=#94A8A8
    hi clear Operator
    hi Operator guifg=#94A8A8
    hi clear Delimiter
    hi Delimiter guifg=#94A8A8
    hi clear Number
    hi Number guifg=#CCA054
    hi clear PreProc
    hi PreProc guifg=#A8A844
    hi clear SpecialComment
    hi SpecialComment guifg=#A8A844
    hi clear Comment
    hi Comment guifg=#8CA844
    hi clear Boolean
    hi Boolean guifg=#44A844
    hi clear Statement
    hi Statement guifg=#44A844
    hi clear Type
    hi Type guifg=#44A844
    hi clear Include
    hi Include guifg=#44A844
    hi clear String
    hi String guifg=#20A8A8
    hi clear Character
    hi Character guifg=#20A8A8
    hi clear Special
    hi Special guifg=#3498FF
    hi clear Tag
    hi Tag guifg=#5CA0E8
    hi clear Underlined
    hi Underlined guifg=#5CA0E8 gui=underline
    hi clear Constant
    hi Constant guifg=#C074C0
    hi clear Error
    hi Error guibg=#4C1400
    hi clear Todo
    hi Todo guibg=#444C00
    hi clear Question
    hi Question guifg=#44A844
    hi clear Directory
    hi Directory guifg=#3498FF
    hi clear Title
    hi Title guifg=#3498FF
    hi clear SpecialKey
    hi SpecialKey guifg=#3498FF
    hi clear NonText
    hi NonText guifg=#606860
    hi clear ModeMsg
    hi ModeMsg guifg=#94A8A8
    hi clear MoreMsg
    hi MoreMsg guifg=#44A844
    hi clear ErrorMsg
    hi ErrorMsg guifg=#E85C5C
    hi clear WarningMsg
    hi WarningMsg guifg=#A8A844
    hi clear Folded
    hi Folded guifg=#688080 guibg=#283430
    hi clear MatchParen
    hi MatchParen guibg=#145858
    hi clear ColorColumn
    hi ColorColumn guibg=#485848
    hi clear CursorLine
    hi CursorLine guibg=#2C3424
    hi clear CursorColumn
    hi CursorColumn guibg=#2C3424
    hi clear LineNr
    hi LineNr guifg=#606860
    hi clear CursorLineNr
    hi CursorLineNr guifg=#94A8A8 guibg=#2C3424
    hi clear FoldColumn
    hi FoldColumn guifg=#688080
    hi clear CursorLineFold
    hi CursorLineFold guifg=#94A8A8 guibg=#2C3424
    hi clear SignColumn
    hi SignColumn guifg=#688080
    hi clear CursorLineSign
    hi CursorLineSign guifg=#94A8A8 guibg=#2C3424
    hi clear VertSplit
    hi VertSplit guifg=#606860
    hi clear StatusLine
    hi StatusLine guifg=#94A8A8 guibg=#284028
    hi clear StatusLineNC
    hi StatusLineNC guifg=#688080 guibg=#283428
    hi clear StatusLineTerm
    hi StatusLineTerm guifg=#94A8A8 guibg=#284028
    hi clear StatusLineTermNC
    hi StatusLineTermNC guifg=#688080 guibg=#283428
    hi clear TabLineSel
    hi TabLineSel guifg=#94A8A8
    hi clear TabLine
    hi TabLine guifg=#688080 guibg=#283428
    hi clear TabLineFill
    hi TabLineFill guibg=#283428
    hi clear Visual
    hi Visual guibg=#44582C
    hi clear Search
    hi Search guifg=#94A8A8 guibg=#005800
    hi clear PmenuSel
    hi PmenuSel guibg=#284028
    hi clear Pmenu
    hi Pmenu guibg=#303430
    hi clear PmenuSbar
    hi PmenuSbar guibg=#303430
    hi clear PmenuThumb
    hi PmenuThumb guibg=#708C70
    hi clear WildMenu
    hi WildMenu guibg=#444C00
    hi clear DiffAdd
    hi DiffAdd guibg=#18341C
    hi clear DiffText
    hi DiffText guibg=#203040
    hi clear DiffChange
    hi DiffChange guibg=#283034
    hi clear DiffDelete
    hi DiffDelete guifg=#606860 guibg=#303430
    hi clear SpellBad
    hi SpellBad guibg=#402820
    hi clear SpellLocal
    hi SpellLocal guibg=#1C3434
    hi clear SpellCap
    hi SpellCap guibg=#28284C
    hi clear SpellRare
    hi SpellRare guibg=#402040
    hi clear lspReference
    hi lspReference guibg=#444858
    hi clear cssPseudoClassId
    hi cssPseudoClassId guifg=#94A8A8
    hi clear cssUnitDecorators
    hi cssUnitDecorators guifg=#94A8A8
    hi clear cssFontDescriptorAttr
    hi cssFontDescriptorAttr guifg=#CCA054
    hi clear cssAtKeyword
    hi cssAtKeyword guifg=#44A844
    hi clear cssIdentifier
    hi cssIdentifier guifg=#44A844
    hi clear cssImportant
    hi cssImportant guifg=#44A844
    hi clear cssAttr
    hi cssAttr guifg=#20A8A8
    hi clear cssUrl
    hi cssUrl guifg=#3498FF
    hi clear cssProp
    hi cssProp guifg=#A480FF
    hi clear cssAttributeSelector
    hi cssAttributeSelector guifg=#A480FF
    hi clear goBuiltins
    hi goBuiltins guifg=#44A844
    hi clear helpHyperTextJump
    hi helpHyperTextJump guifg=#5CA0E8
    hi clear htmlTitle
    hi htmlTitle guifg=#94A8A8
    hi clear htmlH1
    hi htmlH1 guifg=#94A8A8
    hi clear htmlTagN
    hi htmlTagN guifg=#44A844
    hi clear htmlSpecialChar
    hi htmlSpecialChar guifg=#3498FF
    hi clear htmlArg
    hi htmlArg guifg=#A480FF
    hi clear javaCommentTitle
    hi javaCommentTitle guifg=#8CA844
    hi clear javaConstant
    hi javaConstant guifg=#44A844
    hi clear javaDocTags
    hi javaDocTags guifg=#A8A844
    hi clear jsonNull
    hi jsonNull guifg=#C074C0
    hi clear jsonBoolean
    hi jsonBoolean guifg=#C074C0
    hi clear javaScriptNumber
    hi javaScriptNumber guifg=#CCA054
    hi clear javaScriptFunction
    hi javaScriptFunction guifg=#44A844
    hi clear javaScriptIdentifier
    hi javaScriptIdentifier guifg=#44A844
    hi clear markdownRule
    hi markdownRule guifg=#44A844
    hi clear markdownHeadingRule
    hi markdownHeadingRule guifg=#44A844
    hi clear markdownHeadingDelimiter
    hi markdownHeadingDelimiter guifg=#44A844
    hi clear markdownCode
    hi markdownCode guifg=#20A8A8
    hi clear markdownCodeBlock
    hi markdownCodeBlock guifg=#20A8A8
    hi clear markdownUrl
    hi markdownUrl guifg=#3498FF
    hi clear markdownLinkText
    hi markdownLinkText guifg=#3498FF
    hi clear markdownId
    hi markdownId guifg=#44A844
    hi clear markdownIdDeclaration
    hi markdownIdDeclaration guifg=#44A844
    hi clear pythonExceptions
    hi pythonExceptions guifg=#94A8A8
    hi clear pythonDecoratorName
    hi pythonDecoratorName guifg=#A8A844
    hi clear pythonBuiltin
    hi pythonBuiltin guifg=#44A844
    hi clear rustMacroRepeatDelimiters
    hi rustMacroRepeatDelimiters guifg=#94A8A8
    hi clear rustQuestionMark
    hi rustQuestionMark guifg=#94A8A8
    hi clear rustCommentLineDoc
    hi rustCommentLineDoc guifg=#8CA844
    hi clear rustSelf
    hi rustSelf guifg=#44A844
    hi clear rustLabel
    hi rustLabel guifg=#20A8A8
    hi clear rustLifetime
    hi rustLifetime guifg=#20A8A8
    hi clear rustModPath
    hi rustModPath guifg=#3498FF
    hi clear rustIdentifier
    hi rustIdentifier guifg=#3498FF
    hi clear rustEnum
    hi rustEnum guifg=#3498FF
    hi clear rustTrait
    hi rustTrait guifg=#3498FF
    hi clear rustMacroVariable
    hi rustMacroVariable guifg=#C074C0
    hi clear shCommandSub
    hi shCommandSub guifg=#94A8A8
    hi clear shStatement
    hi shStatement guifg=#94A8A8
    hi clear shTestOpr
    hi shTestOpr guifg=#94A8A8
    hi clear shCmdSubRegion
    hi shCmdSubRegion guifg=#44A844
    hi clear shFunctionKey
    hi shFunctionKey guifg=#44A844
    hi clear shHereDoc01
    hi shHereDoc01 guifg=#44A844
    hi clear shLoop
    hi shLoop guifg=#44A844
    hi clear shFor
    hi shFor guifg=#C074C0
    hi clear shDeref
    hi shDeref guifg=#C074C0
    hi clear shVariable
    hi shVariable guifg=#C074C0
    hi clear tomlKey
    hi tomlKey guifg=#44A844
    hi clear tomlKeyDq
    hi tomlKeyDq guifg=#44A844
    hi clear tomlTable
    hi tomlTable guifg=#44A844
    hi clear tomlBoolean
    hi tomlBoolean guifg=#C074C0
    hi clear xmlCdataStart
    hi xmlCdataStart guifg=#A8A844
    hi clear xmlCdataCdata
    hi xmlCdataCdata guifg=#A8A844
    hi clear xmlCdataEnd
    hi xmlCdataEnd guifg=#A8A844
    hi clear xmlTagName
    hi xmlTagName guifg=#44A844
    hi clear xmlNamespace
    hi xmlNamespace guifg=#3498FF
    hi clear xmlEntity
    hi xmlEntity guifg=#3498FF
    hi clear xmlEntityPunct
    hi xmlEntityPunct guifg=#3498FF
    hi clear xmlAttrib
    hi xmlAttrib guifg=#A480FF
    hi clear yamlKeyValueDelimiter
    hi yamlKeyValueDelimiter guifg=#94A8A8
    hi clear yamlAnchor
    hi yamlAnchor guifg=#A8A844
    hi clear yamlAlias
    hi yamlAlias guifg=#A8A844
    hi clear yamlBlockMappingKey
    hi yamlBlockMappingKey guifg=#44A844
endif
