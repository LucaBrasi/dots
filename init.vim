" minimal nvim
au! BufWritePost $MYVIMRC source $MYVIMRC
colorscheme nord
nnoremap <SPACE> <Nop>
let mapleader = " "
set clipboard+=unnamedplus
"set colorcolumn=80
set cursorline
set nowrap
set path+=**
set splitbelow
set splitright
set undofile
set wildmenu
set smartcase
set relativenumber
set number
set ignorecase

" netrw
let g:netrw_altv=0
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_liststyle=3
let g:netrw_winsize = 25

" custom keys
map <leader>n :vsplit<cr>
map <leader>n :split<cr>
nnoremap <leader>b :ls<cr>:b<Space>
nnoremap <leader>e :Lexplore<cr>
nnoremap <leader>h :set hlsearch!<cr>
nnoremap <leader>w :w<cr>
nnoremap <tab> :bn<cr>
nnoremap <S-tab> :bp<cr>

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

"make colorcolumn less distracting
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * if argc() == 0 | Lexplore | endif
augroup END
