" Painting plugin
" Version: Prototype
" Author : thinca <thinca+vim@gmail.com>
" License: zlib License

if exists('g:loaded_painter')
  finish
endif
let g:loaded_painter = 1

let s:save_cpo = &cpo
set cpo&vim

command! PainterStart call painter#start()

let &cpo = s:save_cpo
unlet s:save_cpo
