set nocompatible

set noswapfile
set nobackup

filetype off
filetype plugin indent off

let g:gofmt_command = 'goimports'
set rtp^=/usr/local/opt/go/libexec/misc/vim
set rtp^=${GOPATH}/src/github.com/nsf/gocode/vim

au BufWritePre *.go Fmt
au BufNewFile,BufRead *.go set sw=4 noexpandtab ts=4
au FileType go compiler go

au FileType javascript setl sw=2 ts=2 et
au FileType html setl sw=2 ts=2 et

au FileType ruby setl sw=2 ts=2 et
au FileType python setl sw=4 ts=4 et
au FileType lua setl sw=4 ts=4 et

filetype plugin indent on
syntax on

" no wrap
set textwidth=0

" change cursor on insert mode
au InsertEnter * set cul
au InsertLeave * set nocul

"set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp,default,latin
set fileencodings=utf-8,cp932,euc-jp,default,latin

" Use tmux clipboard copy&paste feature instead of vim's.
set clipboard=unnamed,autoselect
