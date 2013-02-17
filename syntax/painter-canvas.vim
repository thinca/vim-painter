" Syntax file for painter-palette
" Version: Prototype
" Author : thinca <thinca+vim@gmail.com>
" License: zlib License

if exists('b:current_syntax')
  finish
endif

syntax match painterCanvasWhite  /白/
syntax match painterCanvasRed    /赤/
syntax match painterCanvasBlue   /青/
syntax match painterCanvasYellow /黄/
syntax match painterCanvasGreen  /緑/

highlight default painterCanvasWhite guifg=white guibg=white
highlight default painterCanvasRed guifg=red guibg=red
highlight default painterCanvasBlue guifg=blue guibg=blue
highlight default painterCanvasYellow guifg=yellow guibg=yellow
highlight default painterCanvasGreen guifg=green guibg=green

let b:current_syntax = 'painter-canvas'
