if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
so ~/.vim/plugins.vim
filetype plugin indent on
syntax on
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set pastetoggle=<F2>
set backspace=indent,eol,start

:let mapleader = ","
nmap <C-P> :Files<CR>
nmap <Leader>m :History<CR>
nmap ; :Buffers<CR>

let g:terraform_fmt_on_save=1
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_commentstring='//%s'

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 236
" Unified color scheme (default: dark)
colo seoul256
