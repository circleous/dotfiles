lua require("plugins")

" workaround for packer_compiled.lua sourced late after init.vim
let $packer_compiled = stdpath("config") . "/packer_compiled.vim"
if filereadable($packer_compiled)
  source $packer_compiled
endif

lua require("core")

lua require("config.alpha")
lua require("config.coc")
lua require("config.lualine")
lua require("config.telescope")
lua require("config.treesitter")
lua require("config.nvimtree")
lua require("config.vista")

runtime keybindings.vim

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
