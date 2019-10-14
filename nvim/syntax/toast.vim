if exists('b:current_syntax')
  finish
endif

syntax sync fromstart

echo "Toast Syntax"

if exists("b:notification.title")
  echo "applying title styling"
  execute 'syntax region ToastTitle start=/\%2l/ end=/$/'
endif

highlight clear ToastTitle
highlight default ToastTitle gui=italic guifg=NONE guibg=NONE
highlight! link ToastTitle Statement

let b:current_syntax = 'toast'

