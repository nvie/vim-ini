" Vim syntax file for simple INI files

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match   iniSection skipwhite contains=iniRule "^\[.\+\]$"

syn match   iniRule "^[^=:]\{-1,}="
syn match   iniRule "^[^:=]\{-1,}:"

syn match   iniComment skipwhite "^[#;].*"

" Highlighting Settings
" ====================

hi def link iniSection Keyword
hi def link iniRule Identifier
hi def link iniComment Comment

let b:current_syntax = "ini"
