" Author: cappyzawa <cappyzawa@yahoo.ne.jp>

function! sd_validate#window#open(validated) abort
  setlocal splitright
  vnew
  wincmd l
  call setline(1, a:validated)
  let &filetype='yaml'
  setlocal nomodified
endfunction
