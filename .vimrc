" leader
let mapleader="\<space>"

" turning mouse selection on
set mouse=a

" turning off beeps
set belloff=all

" Turn on syntax highlighting
syntax on
set background=dark

"packadd! dracula
"colorscheme dracula
colorscheme one

" para menus em geral
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel ctermfg=black ctermbg=white

" highlight current line
set cursorline
hi CursorLine cterm=BOLD
"hi CursorLine cterm=BOLD ctermbg=0 ctermfg=NONE

" Show line numbers
set relativenumber
set number
"hi CursorLineNr term=bold cterm=bold ctermfg=010 gui=bold

" For plugins to load correctly
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Security
set modelines=0

" Show file stats
set ruler

" Encoding
set encoding=utf-8

set laststatus=2

" status bar """"""""""""""""""""""""""""""""""""""""""

"let gitBranch=system("git rev-parse --abbrev-ref HEAD")
"let gitBranch=system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")

"set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=\ %{gitBranch}\ 
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\ 

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" FZF """"""""""""""""""""""""""""""""""""""""""
set rtp+=/usr/local/opt/fzf

"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9, 'relative': v:true, 'yoffset': 1.0 } }
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

nmap <leader>f :Files<CR>
nmap <leader>gf :GFiles<CR>
nmap <leader>rg :Rg<CR>

""""""""""""""""""""""""""""""""""""""""""""""""

" COC """"""""""""""""""""""""""""""""""""""""""
"set cmdheight=2
set updatetime=375

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>b :ls<CR>
nmap <leader>] :bn<CR>
nmap <leader>[ :bp<CR>
nmap <leader>> :tabnext<CR>
nmap <leader>< :tabprevious<CR>
nmap <leader>e :e .<CR>
