" Palette: {{{

let g:dracula#palette           = {}
let g:dracula#palette.fg        = ['#F8F8F2',  7]
let g:dracula#palette.bg        = ['#21222C',  0]

" Some highlight groups depend on these so
" we can't remove them yet
let g:dracula#palette.bglighter = ['#282A36', 236]
let g:dracula#palette.bglight   = ['#282A36', 236]
let g:dracula#palette.bgdark    = ['#282A36', 236]
let g:dracula#palette.bgdarker  = ['#282A36', 236]
let g:dracula#palette.comment   = ['#F1FA8C',  61]
let g:dracula#palette.selection = ['#44475A', 239]
let g:dracula#palette.subtle    = ['#424450', 238]
let g:dracula#palette.orange    = ['#FFB86C', 215]

" ANSI colors
let g:dracula#palette.black     = ['#21222C',   0]
let g:dracula#palette.red       = ['#FF5555',   1]
let g:dracula#palette.green     = ['#50FA7B',   2]
let g:dracula#palette.yellow    = ['#F1FA8C',   3]
let g:dracula#palette.purple    = ['#BD93F9',   4]
let g:dracula#palette.pink      = ['#FF79C6',   5]
let g:dracula#palette.cyan      = ['#8BE9FD',   6]
let g:dracula#palette.white     = ['#F8F8F2',   7]
let g:dracula#palette.b_black   = ['#6272A4',   8]
let g:dracula#palette.b_red     = ['#FF6E6E',   9]
let g:dracula#palette.b_green   = ['#69FF94',  10]
let g:dracula#palette.b_yellow  = ['#FFFFA5',  11]
let g:dracula#palette.b_purple  = ['#D6ACFF',  12]
let g:dracula#palette.b_pink    = ['#FF92DF',  13]
let g:dracula#palette.b_cyan    = ['#A4FFFF',  14]
let g:dracula#palette.b_white   = ['#FFFFFF',  15]

"
" ANSI
"
let g:dracula#palette.color_0  = '#21222C'
let g:dracula#palette.color_1  = '#FF5555'
let g:dracula#palette.color_2  = '#50FA7B'
let g:dracula#palette.color_3  = '#F1FA8C'
let g:dracula#palette.color_4  = '#BD93F9'
let g:dracula#palette.color_5  = '#FF79C6'
let g:dracula#palette.color_6  = '#8BE9FD'
let g:dracula#palette.color_7  = '#F8F8F2'
let g:dracula#palette.color_8  = '#6272A4'
let g:dracula#palette.color_9  = '#FF6E6E'
let g:dracula#palette.color_10 = '#69FF94'
let g:dracula#palette.color_11 = '#FFFFA5'
let g:dracula#palette.color_12 = '#D6ACFF'
let g:dracula#palette.color_13 = '#FF92DF'
let g:dracula#palette.color_14 = '#A4FFFF'
let g:dracula#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
