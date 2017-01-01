filetype off
filetype plugin indent off

set noswapfile
set nobackup
set noundofile

if &term =~ "xterm-256color" || "screen-256color"
    set t_Co=256
endif
if !has('gui')
    colo elflord
    hi Visual term=reverse cterm=reverse guibg=Grey
endif

" adjust width for full width characters
set ambiwidth=double

" no wrap
set textwidth=0

" change cursor on insert mode
au InsertEnter * set cul
au InsertLeave * set nocul

set encoding=utf-8
set fileencoding=utf-8,cp932

" configs which I use only on Mac, not on remote servers
if has('mac')
    augroup MyVimrc
        autocmd!
    augroup END

    " for Vundle {{{
    if has('win32')
        let s:vim_home=expand('~/vimfiles')
    else
        let s:vim_home=expand('~/.vim')
    endif
    if has('vim_starting')
        let &runtimepath.=printf(',%s/bundle/Vundle.vim', s:vim_home)
    endif
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    Plugin 'glidenote/memolist.vim'

    Plugin 'fatih/vim-go'

    Plugin 'rust-lang/rust.vim'
    Plugin 'phildawes/racer', {
            \   'build' : {
            \     'mac'  : 'cargo build --release',
            \     'unix' : 'cargo build --release',
            \   },
            \   'autoload' : {
            \     'filetypes' : 'rust',
            \   },
            \ }
    Plugin 'rhysd/rust-doc.vim'

    Plugin 'editorconfig/editorconfig-vim'

    Plugin 'leafgarland/typescript-vim', {
           \  'autoload' : {
           \    'filetypes' : ['typescript'] }
           \ }

    Plugin 'posva/vim-vue'

    call vundle#end()
    " }}}

    " for golang {{{
    set rtp^=$GOPATH/src/github.com/nsf/gocode/vim
    set path+=$GOPATH/src/**
    let g:go_fmt_command = 'goimports'
    au BufNewFile,BufRead *.go set sw=4 noexpandtab ts=4 completeopt=menu,preview
    " }}}

    " for rust {{{
    " racer の設定
    let $RUST_SRC_PATH = expand('~/ghq/github.com/rust-lang/rust/src')

    command! Rustfmt :%!rustfmt %

    " :QuickRun でファイル保存時にシンタックスチェック
    let g:quickrun_config = get(g:, 'quickrun_config', {})
    let g:quickrun_config['syntax/rust'] = {
                \   'command' : 'rustc',
                \   'cmdopt' : '-Zparse-only',
                \   'exec' : '%c %o %s:p',
                \   'outputter' : 'quickfix',
                \ }
    autocmd MyVimrc FileType BufWritePost *.rs QuickRun -type syntax/rust
    " }}}

    " Disabled: Use tmux clipboard copy&paste feature instead of vim's.
    set clipboard=unnamed,autoselect

    set grepprg=pt\ -e\ --nocolor
    autocmd QuickFixCmdPost *grep* cwindow

    " config for memolist
    let g:memolist_memo_suffix = "md"
    map <Leader>mn  :MemoNew<CR>
    map <Leader>ml  :MemoList<CR>
    map <Leader>mg  :MemoGrep<CR>
endif

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

" mappings for gnu global gtags
map <Leader>gg :Gtags
map <Leader>gf :Gtags -f %<CR>
map <Leader>gc :GtagsCursor<CR>
map <Leader>gn :cn<CR>
map <Leader>gp :cp<CR>

" Show trailing whitespace and spaces before a tab
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

filetype plugin indent on
