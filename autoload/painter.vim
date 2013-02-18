" Painting plugin
" Version: Prototype
" Author : thinca <thinca+vim@gmail.com>
" License: zlib License

scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

let s:color = '白'

function! painter#start()
  tabnew painter-palette
  setlocal buftype=nofile nolist nowrap nocursorline nocursorcolumn
  silent put ='白白白  赤赤赤  青青青  黄黄黄  緑緑緑'
  silent put ='白白白  赤赤赤  青青青  黄黄黄  緑緑緑'
  silent put ='白白白  赤赤赤  青青青  黄黄黄  緑緑緑'
  noremap <buffer> <silent> <LeftMouse> :<C-u>call <SID>set_color()<CR>
  setlocal filetype=painter-palette
  1

  belowright new painter-canvas
  wincmd p
  resize 5
  wincmd p
  let line = repeat('　', winwidth(0) / 2 - 1)
  silent put =repeat([line], winheight(0))
  setlocal buftype=nofile nolist nowrap nocursorline nocursorcolumn
  noremap <buffer> <silent> <LeftMouse>  :<C-u>call <SID>draw(1)<CR>
  noremap <buffer> <silent> <LeftDrag>   :<C-u>call <SID>draw(0)<CR>
  noremap <buffer> <silent> <RightMouse> :<C-u>call <SID>erase(1)<CR>
  noremap <buffer> <silent> <RightDrag>  :<C-u>call <SID>erase(0)<CR>
  setlocal filetype=painter-canvas
  1
endfunction

function! s:draw(first)
  if !a:first
    undojoin
  endif
  execute 'normal!' "\<LeftMouse>"
  if &l:filetype ==# 'painter-canvas'
    execute 'normal!' 'r' . s:color
  else
    execute 'normal' "\<LeftMouse>"
  endif
endfunction

function! s:erase(first)
  if !a:first
    undojoin
  endif
  execute 'normal!' "\<LeftMouse>"
  if &l:filetype ==# 'painter-canvas'
    execute 'normal!' "r　"
  else
    execute 'normal' "\<LeftMouse>"
  endif
endfunction

function! s:set_color()
  execute 'normal!' "\<LeftMouse>"
  let char = matchstr(getline('.')[col('.') - 1 :], '^.')
  if char =~# '\S' && char !=# '　'
    let s:color = char
    echo s:color
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
