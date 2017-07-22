set directory=~/.vim-swap
set backupdir=~/.vim-bak
set undodir=~/.vim-undo

set autowrite

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'fatih/molokai'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'glidenote/memolist.vim'
call plug#end()

" NOTE: To install ack, run the command below.
" CentOS: sudo yum install ack
" Ubuntu: sudo apt-get install ack-grep
set grepprg=ack\ -r\ --ignore-dir=vendor
"set grepprg=pt\ -e\ --nocolor
"set grepprg=jvgrep\ -R\ -r\ --no-color
autocmd QuickFixCmdPost *grep* cwindow

" settings for vim-go
" https://github.com/fatih/vim-go-tutorial
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_test_timeout = '10s'
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'gocyclo']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = '5s'
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_play_open_browser = 0
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

augroup go
  autocmd!

  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

  " :GoBuild and :GoTestCompile
  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

  " :GoTest
  autocmd FileType go nmap <leader>t  <Plug>(go-test)

  " :GoRun
  autocmd FileType go nmap <leader>r  <Plug>(go-run)

  " :GoDoc
  autocmd FileType go nmap <Leader>d <Plug>(go-doc)

  " :GoCoverageToggle
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

  " :GoInfo
  autocmd FileType go nmap <Leader>i <Plug>(go-info)

  " :GoMetaLinter
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)

  " :GoDef but opens in a vertical split
  autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
  " :GoDef but opens in a horizontal split
  autocmd FileType go nmap <Leader>s <Plug>(go-def-split)

  " :GoAlternate  commands :A, :AV, :AS and :AT
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

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
