" ~/.vim/vimrc

let s:jetpackfile = expand('<sfile>:p:h') .. '/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
let s:jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if !filereadable(s:jetpackfile)
  call system(printf('curl -fsSLo %s --create-dirs %s', s:jetpackfile, s:jetpackurl))
endif

packadd vim-jetpack
call jetpack#begin()
call jetpack#add('tani/vim-jetpack')
call jetpack#add('junegunn/vim-easy-align')
call jetpack#add('mattn/vim-lsp-settings')
call jetpack#add('mattn/vim-goimports')
call jetpack#add('tpope/vim-surround')
call jetpack#end()

"https://hail2u.net/blog/software/using-git-grep-with-vim.html
set grepprg=git\ grep\ --no-index\ -I\ --line-number\ --no-color

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

autocmd QuickfixCmdPost make,grep copen

map <C-n> :cnext<CR>
map <C-p> :cprevious<CR>

au FileType go setl sw=4 ts=4 noet
au FileType c setl sw=2 ts=2 et
au FileType javascript setl sw=2 ts=2 et
au FileType vue setl sw=2 ts=2 et
au FileType typescript setl sw=2 ts=2 et
au FileType html setl sw=2 ts=2 et
au FileType markdown setl sw=2 ts=2 et
au FileType yaml setl sw=2 ts=2 et
au FileType python setl sw=4 ts=4 et
au FileType lua setl sw=4 ts=4 et
au FileType rust setl sw=4 ts=4 et

" Use blighter color instead of default dark blue
color desert

" Align GitHub-flavored Markdown tables
" https://thoughtbot.com/blog/align-github-flavored-markdown-tables-in-vim
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
