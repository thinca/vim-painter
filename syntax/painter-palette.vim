" Syntax file for painter-canvas
" Version: Prototype
" Author : thinca <thinca+vim@gmail.com>
" License: zlib License

if exists('b:current_syntax')
  finish
endif

syntax match painterPaletteWhite  /白/
syntax match painterPaletteRed    /赤/
syntax match painterPaletteBlue   /青/
syntax match painterPaletteYellow /黄/
syntax match painterPaletteGreen  /緑/

highlight default painterPaletteWhite  guifg=White  guibg=White
highlight default painterPaletteRed    guifg=Red    guibg=Red
highlight default painterPaletteBlue   guifg=Blue   guibg=Blue
highlight default painterPaletteYellow guifg=Yellow guibg=Yellow
highlight default painterPaletteGreen  guifg=Green  guibg=Green

let b:current_syntax = 'painter-palette'
