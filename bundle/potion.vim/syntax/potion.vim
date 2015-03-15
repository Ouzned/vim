if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "potion"

syntax keyword potionKeyword to class return
syntax keyword potionRepeat times loop while
syntax keyword potionFunction print join
syntax keyword potionType string
syntax keyword potionConditional if elseif else

syntax match potionComment "#.*$"
syntax match potionDelimiter "\v(\.|\:)$"
syntax match potionOperator "\v(\*|\+|\=)"
syntax match potionFunction ".*\ze\ = (.*):$"

syntax match potionNumber "\v[0-9]+"
syntax match potionNumber "\v0x[a-z]\{4}"
syntax match potionNumber "\v[0-9]+\.[0-9]+"
syntax match potionNumber "\v[0-9]+e(\+|-)[0-9]+"

syntax region potionString start=+"+ skip=+\\"+ end=+"+
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link potionString String
highlight link potionNumber Number
highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionRepeat Repeat
highlight link potionOperator Operator
highlight link potionType Type
highlight link potionContional Conditional
highlight link potionDelimiter Delimiter
highlight link potionComment Comment

