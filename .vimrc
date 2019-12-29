" NOTE: Run the following commands to install vim-plug and plugins.
" curl -sSfLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" vim +PlugInstall +q +q
call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-goimports'
call plug#end()

" NOTE: To install ag, run the command below.
" Ubuntu: sudo apt-get install silversearcher-ag
set grepprg=ag\ --vimgrep
set grepformat=%f:%l:%c:%m
"set grepprg=jvgrep\ -R\ -r\ --no-color
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
