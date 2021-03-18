let g:startify_files_number = 3

let g:startify_lists = [
        \ { 'type': 'dir',       'header': ['   Current directory: '. getcwd()] },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks'] },
        \ ]

let g:startify_bookmarks = [
	\ '~/.irssi/config',
	\ '~/.config/i3/config',
	\ '~/.config/mpv/mpv.conf',
	\ '~/.config/nvim/init.vim',
	\ '~/.config/nvim/coc.vim',
	\ '~/.config/picom/picom.conf',
	\ '~/.config/tmux/tmux.conf',
	\
	\ '~/.local/bin',
	\ '~/src/viope-cpp-opp',
	\]


" Fancy custom header
let g:startify_custom_header = [
	\"            ",
	\'                                              ███                 ',
	\'                                             ░░░                  ',
	\'    ████████    ██████   ██████  █████ █████ ████  █████████████  ',
	\'   ░░███░░███  ███░░███ ███░░███░░███ ░░███ ░░███ ░░███░░███░░███ ',
	\'    ░███ ░███ ░███████ ░███ ░███ ░███  ░███  ░███  ░███ ░███ ░███ ',
	\'    ░███ ░███ ░███░░░  ░███ ░███ ░░███ ███   ░███  ░███ ░███ ░███ ',
	\'    ████ █████░░██████ ░░██████   ░░█████    █████ █████░███ █████',
	\'   ░░░░ ░░░░░  ░░░░░░   ░░░░░░     ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ ',
	\]
