" Author: cappyzawa <cappyzawa@yahoo.ne.jp>

let s:save_cpo = &cpo
set cpo&vim

function! s:validate(type) abort
  let l:cmd = sd_validate#cmd#new()
  let l:sub_command = ''
  if a:type ==# 'pipeline'
    let l:sub_command = 'validate'
  elseif a:type ==# 'template'
    let l:sub_command = 'validate-template'
  endif
  return l:cmd.run(l:sub_command, '-f', expand('%'))
endfunction

function! sd_validate#validate(type) abort
  echo s:validate(a:type)
endfunction

function! sd_validate#validate_output() abort
  let l:cmd = sd_validate#cmd#new()
  let l:sub_command = ''
  let l:validated = l:cmd.run(l:sub_command, '-f', expand('%'), '--output')
  call sd_validate#window#open(l:validated)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
