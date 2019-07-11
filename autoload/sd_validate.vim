" Author: cappyzawa <cappyzawa@yahoo.ne.jp>

let s:save_cpo = &cpo
set cpo&vim

function! s:validate() abort
  let l:cmd = sd_validate#cmd#new()
  return l:cmd.run('validate', expand('%'))
endfunction

function! sd_validate#validate() abort
  echo s:validate()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
