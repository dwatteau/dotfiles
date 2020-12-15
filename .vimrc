set nomodeline
set nobackup
syntax on
colorscheme elflord
set smartindent
set hlsearch
set mouse=
autocmd BufNewFile,BufRead *.toml setf dosini
autocmd BufNewFile,BufRead Dockerfile.* set syntax=dockerfile
