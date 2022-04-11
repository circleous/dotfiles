let g:mapleader = " "

" vertical split
nnoremap vs :vs<CR>

" horizontal split
nnoremap sp :sp<CR>

" replace
nnoremap <C-S> :%s/

" sidebar file explorer
nnoremap <C-N> :Lexplore<CR> :vertical resize 30<CR>

" spawn terminal
nnoremap <silent><leader>t :sp<CR> :term<CR> :resize 20N<CR> i

" --- coc.nvim ---

" Tab Snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

nmap <leader>. <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
inoremap <silent> <expr> <C-space> coc#refresh()
nmap <silent>gd <Plug>(coc-definition)
nnoremap <silent>K :call CocActionAsync("doHover")<CR>
nnoremap <leader>f :call CocActionAsync("format")<CR>

" --- telescope ---
nnoremap <C-P> :lua require("telescope.builtin").find_files()<CR>
nnoremap <C-F> :lua require("telescope.builtin").live_grep()<CR>
nnoremap <C-B> :lua require("telescope.builtin").buffers()<CR>

" --- nvim-tree ---
nnoremap <C-n> :NvimTreeToggle<CR>

