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

highlight default painterCanvasWhite  guifg=White  guibg=White
highlight default painterCanvasRed    guifg=Red    guibg=Red
highlight default painterCanvasBlue   guifg=Blue   guibg=Blue
highlight default painterCanvasYellow guifg=Yellow guibg=Yellow
highlight default painterCanvasGreen  guifg=Green  guibg=Green

let b:current_syntax = 'painter-canvas'
