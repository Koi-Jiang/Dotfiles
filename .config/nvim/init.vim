let g:mapleader=' '

set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set hidden
set nobackup
set nowritebackup
set encoding=utf-8
set mouse=a

nmap J 4j

nnoremap <leader>w :w<CR>

set updatetime=300

set cursorline
hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE
hi CursorLineNr cterm=BOLD ctermbg=8
hi Pmenu cterm=NONE ctermbg=Black ctermfg=Blue
hi PmenuSel cterm=BOLD ctermbg=DarkGray ctermfg=Blue

" Syntax
hi String ctermfg=DarkGreen
hi Number ctermfg=Blue
hi Special ctermfg=Blue
hi Type ctermfg=Green
hi Comment ctermfg=DarkGray

" Floaterm
let g:floaterm_keymap_toggle = '<F12>'

" Airline
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#show_coc_status = 1
function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode', ' | ', '%{strftime("%H:%M:%S")}'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
let g:airline_theme='nord_minimal'

" Coc Bindings
" TAB to accept completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#confirm() :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" show symbol
nnoremap <silent> <leader>s :<C-u>CocList symbols<CR>
" Use K to show documentation in preview window.
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>
" GoTo code navigation.
nmap <silent> gds :call CocActionAsync('jumpDefinition', 'vsplit')<CR>
nmap <silent> gdd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>c :CocCommand<CR>
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <space>e <Cmd>CocCommand explorer<CR>
nmap <leader>rn <Plug>(coc-rename)


" Theme config

let g:nord_borders = v:true

" Plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline-themes'
Plug 'folke/todo-comments.nvim'
Plug 'Yggdroot/indentLine'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'shaunsingh/nord.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'numToStr/Comment.nvim'
Plug 'folke/todo-comments.nvim'

call plug#end()

lua require('Comment').setup()

" Theme Stuff

colorschem nord
" set t_Co=256

hi Comment guifg=#A3BE8C

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

hi CocUnusedHighlight guifg=#EBCB8B

" Todo
hi TodoBgFIX guibg=#BF616A guifg=#D8DEE9 gui=BOLD
hi TodoBgTODO guibg=#D08770 guifg=#3B4252 gui=BOLD
hi TodoBgHACK guibg=#A3BE8C guifg=#3B4252 gui=BOLD
hi TodoBgWARN guibg=#EBCB8B guifg=#2E3440 gui=BOLD

lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

