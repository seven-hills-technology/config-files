if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'mxw/vim-jsx'
Plug 'alvan/vim-closetag'
Plug 'ianks/vim-tsx'

call plug#end()

set splitright
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on
set background=dark
colorscheme solarized
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeChDirMode = 2
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/node_modules/*,*/bower_components/*,*/\.vagrant/*,*/\.idea/*,*/\.vscode/*

xnoremap p pgvy
