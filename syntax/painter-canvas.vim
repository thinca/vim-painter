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

highlight default painterCanvasWhite  ctermfg=White  ctermbg=White  guifg=White  guibg=White
highlight default painterCanvasRed    ctermfg=Red    ctermbg=Red    guifg=Red    guibg=Red
highlight default painterCanvasBlue   ctermfg=Blue   ctermbg=Blue   guifg=Blue   guibg=Blue
highlight default painterCanvasYellow ctermfg=Yellow ctermbg=Yellow guifg=Yellow guibg=Yellow
highlight default painterCanvasGreen  ctermfg=Green  ctermbg=Green  guifg=Green  guibg=Green

let b:current_syntax = 'painter-canvas'
