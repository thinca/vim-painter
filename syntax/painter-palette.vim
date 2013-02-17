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

highlight default painterPaletteWhite guifg=white guibg=white
highlight default painterPaletteRed guifg=red guibg=red
highlight default painterPaletteBlue guifg=blue guibg=blue
highlight default painterPaletteYellow guifg=yellow guibg=yellow
highlight default painterPaletteGreen guifg=green guibg=green

let b:current_syntax = 'painter-palette'
