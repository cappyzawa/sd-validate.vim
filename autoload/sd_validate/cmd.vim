" execute sdctl
" Author: cappyzawa <cappyzawa@yahoo.ne.jp>

let s:cmd = {
      \ 'path': 'sdctl',
      \}

function! sd_validate#cmd#new() abort
  if !executable('sdctl')
    echo 'not found "sdctl"'
  endif
  return s:cmd
endfunction

function! s:cmd.run(...) dict abort
  let l:opts = ''
  for l:opt in a:000
    let l:opts = l:opts . ' ' . l:opt
  endfor
  return s:trim(system(l:self.path . l:opts))
endfunction

function! s:trim(str) abort
  let l:str = a:str
  let l:str = substitute(l:str, '^[ \t\n]\+', '', 'g')
  let l:str = substitute(l:str, '[ \t\n]\+$', '', 'g')
  return l:str
endfunction
