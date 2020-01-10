" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

if ! has("gui_running")
    set t_Co=256
    colorscheme railscasts
endif

set dir=$HOME/.vim
set modeline
set langmenu=none
set shiftwidth=4 softtabstop=4 ignorecase smartcase incsearch
set splitbelow splitright

if has ("autocmd")
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
    autocmd Filetype java setlocal ts=4 sw=4 sts=4 et
endif

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

map <F2> :set background=dark<CR>
map O1;2Q :set background=light<CR>
map <F11> :set wrap!<CR>
map <F12> :set number!<CR>

cmap w!! %!sudo tee >/dev/null %

" run html-tidy on selection
vmap ,h :!tidy -q -i --show-errors 0<CR>

" run xmllint on selection
vmap ,x :!tidy -q -i -xml --show-errors 0 --indent-spaces 4 --wrap 0<CR>

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set ls=2
