" NOTE: Run the following commands to install vim-plug and plugins.
" curl -sSfLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" vim +PlugInstall +q +q
call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-goimports'
call plug#end()

"https://hail2u.net/blog/software/using-git-grep-with-vim.html
set grepprg=git\ grep\ --no-index\ -I\ --line-number\ --no-color

"if executable('jvgrep')
"  set grepprg=jvgrep\ -R\ -r\ --no-color
"elseif executable('rg')
"  " NOTE: Download rg from https://github.com/BurntSushi/ripgrep/releases
"  set grepprg=rg\ --vimgrep\ --no-heading
"  set grepformat=%f:%l:%c:%m,%f:%l:%m
"elseif executable('ag')
"  " NOTE: To install ag, run the command below.
"  " Ubuntu: sudo apt-get install silversearcher-ag
"  set grepprg=ag\ --vimgrep
"  set grepformat=%f:%l:%c:%m
"endif

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
