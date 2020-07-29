call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
call plug#end()

source $HOME/.config/nvim/coc.vim
au! BufWritePost $MYVIMRC source $MYVIMRC

colorscheme gruvbox
nnoremap <SPACE> <Nop>
let mapleader = " "

set autochdir
set clipboard+=unnamedplus
set completeopt=menuone,noinsert
set cursorline
set expandtab
set ignorecase
set inccommand=split
set incsearch
set nowrap
set number
set path+=**
set pumheight=10
set relativenumber
set shiftwidth=4
set smartcase
set splitbelow
set splitright
set tabstop=4
set undofile
set wildmenu
set wildchar=<Tab> wildmenu wildmode=full

" netrw
let g:netrw_banner=0
let g:netrw_browse_split=0
let g:netrw_winsize=25
let g:netrw_fastbrowse=0

" custom keys
map <leader>n :vsplit<cr>
map <leader>v :split<cr>
nnoremap <S-tab> :bp<cr>
nnoremap <leader>b :buffer<Space>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>c :set cursorline!<cr>
nnoremap <leader>e :Explore<cr>
nnoremap <leader>f :vsp <bar> term gcc -std=c99 -Wall -Wextra -lm % && ./a.out<cr>
nnoremap <leader>g :vsp <bar> term g++ -Wall -Wextra % && ./a.out<cr>
nnoremap <leader>h :set hlsearch!<cr>
nnoremap <leader>j :vsp <bar> term node %<cr>
nnoremap <leader>p :vsp <bar> term python3 %<cr>
nnoremap <leader>s yiw:%s/\<<C-r><C-w>\>//gc<left><left><left>
nnoremap <leader>t :vsp <bar> term<cr>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <leader>w :w<cr>
nnoremap <tab> :bn<cr>

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

"make colorcolumn less distracting
highlight ColorColumn ctermbg=black
call matchadd('ColorColumn', '\%80v', 100)

" if not opening any file, open netrw
augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * if argc() == 0 | Explore | endif
augroup END

" set local buffer directory
autocmd BufEnter * silent! lcd %:p:h

" open terminal in insert mode
if has ('nvim')
	autocmd TermOpen term://* startinsert
endif
