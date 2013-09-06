if exists("b:current_syntax")
    finish
endif

syntax keyword strataInclude load
highlight link strataInclude Include

syntax keyword strataKeyword begin end start stop
syntax keyword strataKeyword energy time adc real_x real_y temp sensor 
syntax keyword strataKeyword layer channel display_x display_y
syntax keyword strataKeyword calib_valid valid calibValid geom geometry
syntax keyword strataKeyword badEvent badChannel isEmpty is_empty empty
syntax keyword strataKeyword amp aplitude index pixel lowgain range_switch
highlight link strataKeyword Keyword

syntax keyword strataType cloud cloud1 cloud1d cloud2 cloud2d cloud3 cloud3d
syntax keyword strataType hist hist1 hist1d hist2 hist2d hist3 hist3d track
highlight link strataType Type

syntax keyword strataFunction fill name bins upper lower init
highlight link strataFunction Function

syntax keyword strataConditional if and or
syntax match strataConditional "\v\&+"
syntax match strataConditional "\v\|+"
highlight link strataConditional Conditional

syntax match strataOperator "\v\*"
syntax match strataOperator "\v/\{1}"
syntax match strataOperator "\v\+"
syntax match strataOperator "\v-"
syntax match strataOperator "\v\=\="
highlight link strataOperator Operator

syntax match strataComment "\v#.*$"
syntax match strataComment "\v\/\/.*$"
highlight link strataComment Comment

syntax match strataNumber "\v[-+]?\d*(\.|(\d+e))?\d+"
highlight link strataNumber Number

syntax region strataString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region strataString start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link strataString String

let b:current_syntax = "strata"
