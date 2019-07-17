# sd-validate.vim
Vim Plugin to validate screwdriver's file

## Installation
This plugin required [tk3fftk/sdctl: Screwdriver\.cd API wrapper CLI](https://github.com/tk3fftk/sdctl).

```bash
$ go get github.com/tk3fftk/sdctl
```

To install using [Vim-Plug](https://github.com/junegunn/vim-plug):
```
" add this line to your .vimrc file
Plug 'cappyzawa/sd-validate.vim'
```

## Supported Commands
|Command|Description|
|:---|:---|
|ValidatePipeline|validate `screwdriver.yaml`|
|ValidateTemplate|validate `sd-template.yaml`|
|ValidatePipelineOutput|display A validated result on vertical window|

The default is to validate each time you save the `screwdriver.yaml` or `sd-template.yaml`.

You can disable this behavior with the following settings:
```
let g:sd_validate_disable_auto = v:true
```
