lua require("plugins")

lua require("config.coc")
lua require("config.lualine")
lua require("config.telescope")
lua require("config.treesitter")

runtime keybindings.vim

let g:tokyonight_style = "night"
let g:tokyonight_sidebars = [ "terminal", "packer" ]
colorscheme tokyonight

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set number
set nowrap
set expandtab
set incsearch
set tabstop=2
set cursorline
set ignorecase
set nohlsearch
set noswapfile
set splitbelow
set splitright
set scrolloff=3
set noerrorbells
set shiftwidth=2
set numberwidth=4
set colorcolumn=80
set noshowmode
set showtabline=2
set signcolumn=yes
set mouse=a

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
