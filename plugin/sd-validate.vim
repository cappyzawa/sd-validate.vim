" Author: cappyzawa <cappyzawa@yahoo.ne.jp

if exists('g:loaded_sd_validate')
  finish
endif

let g:loaded_sd_validate = 1

let s:save_cpo = &cpo
set cpo&vim

command! -bar SDValidatePipeline call sd_validate#validate('pipeline')
command! -bar SDValidateTemplate call sd_validate#validate('template')
command! -bar SDValidatePipelineOutput call sd_validate#validate_output()

augroup sd_validate
  autocmd!
  autocmd BufWritePost *screwdriver.yaml call sd_validate#validate('pipeline')
  autocmd BufWritePost *sd-template.yaml call sd_validate#validate('template')
augroup END

if exists('g:sd_validate_disable_auto')
  augroup sd_validate
    autocmd!
  augroup END
endif

let &cpo = s:save_cpo
unlet s:save_cpo
