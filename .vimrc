set directory=~/.vim-swap
set backupdir=~/.vim-bak
set undodir=~/.vim-undo

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'glidenote/memolist.vim'
call plug#end()

let g:go_fmt_command = "goimports"
" NOTE: To install ack, run the command below.
" CentOS: sudo yum install ack
" Ubuntu: sudo apt-get install ack-grep
set grepprg=ack\ -r
"set grepprg=pt\ -e\ --nocolor
"set grepprg=jvgrep\ -R\ -r\ --no-color
autocmd QuickFixCmdPost *grep* cwindow

au FileType c setl sw=2 ts=2 et
au FileType javascript setl sw=2 ts=2 et
au FileType vue setl sw=2 ts=2 et
au FileType typescript setl sw=2 ts=2 et
au FileType html setl sw=2 ts=2 et
au FileType markdown setl sw=2 ts=2 et

au FileType ruby setl sw=2 ts=2 et
au FileType yaml setl sw=2 ts=2 et
au FileType python setl sw=4 ts=4 et
au FileType lua setl sw=4 ts=4 et

" mapping for memolist
map <Leader>mn  :MemoNew<CR>
map <Leader>ml  :MemoList<CR>
map <Leader>mg  :MemoGrep<CR>

" mappings for gnu global gtags
map <Leader>gg :Gtags<SPACE>
map <Leader>gt :Gtags -f %<CR>
map <Leader>gj :GtagsCursor<CR>
map <Leader>gn :cn<CR>
map <Leader>gp :cp<CR>
