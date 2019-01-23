set number

" Automatically download and install vim-plug if it is not already
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" A color scheme
Plug 'junegunn/seoul256.vim'

" Disctraction free editiing
Plug 'junegunn/goyo.vim'

" Autocomplete
Plug 'Valloric/YouCompleteMe'

" Reasonable default settings
Plug 'tpope/vim-sensible'

" Advanced git integration
Plug 'tpope/vim-fugitive'

" Show git diffs
Plug 'mhinz/vim-signify'

" Quick commenting
Plug 'tpope/vim-commentary'

" Preview markdown files
" Note: Does not seem to work properly but it is an interesting concept
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Easy edit of pgp encrypted files
Plug 'jamessan/vim-gnupg'

" Colors on my parentheses
Plug 'junegunn/rainbow_parentheses.vim'

" Improved status bar
Plug 'vim-airline/vim-airline'

" Themes for the status bar
Plug 'vim-airline/vim-airline-themes'

" Directory tree exploration
Plug 'scrooloose/nerdtree'

" Git integration for NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Themes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'

" Maps for cscope
Plug 'chazy/cscope_maps'

call plug#end()

" Set default theme
set background=dark
colo gruvbox

" Disable bracketed paste (0~*1~)
set t_BE=
