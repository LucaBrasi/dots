au! BufWritePost $MYVIMRC source $MYVIMRC

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'clangd/coc-clangd'
Plug 'mhinz/vim-startify'
call plug#end()

source /home/jarpukka/.config/nvim/coc.vim
source /home/jarpukka/.config/nvim/startify.vim

let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
colorscheme nord

nnoremap <SPACE> <Nop>
let mapleader = "\<space>"

set clipboard+=unnamedplus
set completeopt=menuone,noinsert,noselect
set hidden
set ignorecase
set incsearch
set nowrap
set number
set omnifunc=syntaxcomplete#Complete
set path+=**
set relativenumber
set scrolloff=8
set smartcase
set splitbelow
set splitright
set undofile
set updatetime=50
set wildmenu

" netrw
let g:netrw_banner=0
let g:netrw_browse_split=0
let g:netrw_winsize=25
let g:netrw_fastbrowse=0

" custom keys
nnoremap <leader>n :vsplit<cr>
nnoremap <leader>v :split<cr>
nnoremap <leader>a :Startify<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>b :buffer<space>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>c :set cursorline!<cr>
nnoremap <leader>e :Explore<cr>
"nnoremap <leader>f :vsp <bar> term gcc -g -std=c99 -Wall -Wextra -lm % && ./a.out<cr>
nnoremap <leader>fi :CocFix<cr>
nnoremap <leader>g :vsp <bar> term g++ -g -std=c++17 -Wall -Wextra % && ./a.out<cr>
nnoremap <leader>h :set hlsearch!<cr>
nnoremap <leader>s yiw:%s/\<<C-r><C-w>\>//gc<left><left><left>
nnoremap <leader>t :vsp <bar> term<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>" yiwciw"<C-r><C-p>""<esc>
nnoremap <leader>ec :-1read $HOME/src/empty.c<cr>
inoremap {<Enter> {<Enter>}<Esc>O

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

"make colorcolumn less distracting
"highlight ColorColumn ctermbg=249 ctermfg=black
"call matchadd('ColorColumn', '\%80v', 100)

" if not opening any file, open netrw
"augroup ProjectDrawer
"       autocmd!
"       autocmd VimEnter * if argc() == 0 | Explore | endif
"augroup END

" set files dir to cwd
"autocmd BufEnter * silent! lcd %:p:h

" open terminal in insert mode
autocmd TermOpen term://* startinsert
