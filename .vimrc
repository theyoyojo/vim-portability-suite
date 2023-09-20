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


" Reasonable default settings
Plug 'tpope/vim-sensible'

" Advanced git integration
Plug 'tpope/vim-fugitive'

" Show git diffs
Plug 'mhinz/vim-signify'

" Quick commenting
Plug 'tpope/vim-commentary'

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

" xolox's vim script library
Plug 'xolox/vim-misc'

" Enhanced session management
Plug 'xolox/vim-session'

" Fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'

Plug 'SirVer/ultisnips'

call plug#end()

" Set default theme
set background=dark
colo gruvbox

" F2 will open/close file tree of current dir
map <F2> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1

" remove gunk
" https://stackoverflow.com/questions/62148994/strange-character-since-last-update-42m-in-vim
let &t_TI = ""
let &t_TE = ""

let g:session_autosave = 'no'

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
