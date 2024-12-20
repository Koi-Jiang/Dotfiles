"" ======================================================================
"" Basic
"" ======================================================================

" show relative line numbers
set number
set relativenumber

" enable mouse support
set mouse=a

" tab settings
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" set encoding to utf-8
set encoding=utf-8

" disable backup and write backup files
set nobackup
set nowritebackup

" allow switching buffers without saving
set hidden

" set update time (ms)
set updatetime=100


" set to not ask the user when loading local `.vimrc` files.
let g:localvimrc_ask=0
" Shorter alias for the above.
let g:camelsnek_no_fun_allowed = 0 

" disable coc when start vim (not use coc for now)
let g:coc_start_at_startup = v:false

" fix "IndentLine disabled quotes in Json file" problem  
let g:vim_json_conceal=0

"" ======================================================================
"" Plugins
"" ======================================================================

call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " theme
Plug 'folke/tokyonight.nvim', { 'as': 'tokyonight' } "theme
Plug 'folke/todo-comments.nvim'                " Todo Comments
Plug 'voldikss/vim-floaterm'                   " Floaterm
Plug 'vim-airline/vim-airline'                 " Airline
Plug 'vim-airline/vim-airline-themes'          " Airline

Plug 'nvim-lua/plenary.nvim'                   " Plenary (required by neotree)
Plug 'MunifTanjim/nui.nvim'                    " Nui (required by neotree)
Plug 'nvim-tree/nvim-web-devicons'             " Web Devicons (required by neotree)
Plug 'nvim-neo-tree/neo-tree.nvim'             " Neo Tree

Plug 'anuvyklack/pretty-fold.nvim'             " Pretty Fold

Plug 'nvim-treesitter/nvim-treesitter-context'                 " Treesitter Context
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}    " Treesitter

Plug 'tpope/vim-fugitive'                      " Fugitive (required by neotree)
Plug 'rbong/vim-flog'                          " Flog

"Plug 'github/copilot.vim'                     " Copilot
Plug 'tpope/vim-surround'                      " Surround.vim
Plug 'HiPhish/rainbow-delimiters.nvim'         " Rainbow Delimiters
Plug 'lukas-reineke/indent-blankline.nvim'     " Indent
Plug 'numToStr/Comment.nvim'                   " Quick Comment

Plug 'bkad/CamelCaseMotion'                    " CamelCaseMotion
Plug 'nicwest/vim-camelsnek'                   " Camelsnek

Plug 'windwp/nvim-autopairs'                   " Autopairs

Plug 'williamboman/mason.nvim'                 " Mason
Plug 'williamboman/mason-lspconfig.nvim'       " Mason LSP Config
Plug 'neovim/nvim-lspconfig'                   " LSP

Plug 'hrsh7th/cmp-nvim-lsp'                    " LSP Completion
Plug 'hrsh7th/cmp-buffer'                      " Buffer Completion
Plug 'hrsh7th/cmp-path'                        " Path Completion
Plug 'hrsh7th/cmp-cmdline'                     " Cmdline Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'petertriho/cmp-git'                      " Git Completion

Plug 'hrsh7th/cmp-vsnip'                       " Snippets
Plug 'hrsh7th/vim-vsnip'                       " Snippets

Plug 'nvim-telescope/telescope.nvim'           " Telescope
Plug 'nvim-telescope/telescope-ui-select.nvim' " Telescope UI

call plug#end()

"" ======================================================================
"" Keymaps
"" ======================================================================

" set leader key to space
let g:mapleader=' '

"" normal, visual, insert modes
imap <silent> <C-k> <Up>
imap <silent> <C-j> <Down>
imap <silent> <C-h> <Left>
imap <silent> <C-l> <Right>

"" normal, visual modes
map <leader>1 0
map <leader>2 $

" set keymaps for quicker inline navigation
map J 4j
map K 4k

" set quick keymap for saving
map <silent> <leader>w :w<CR>

"" visual mode

" map the system copy and paste
vmap <leader>y "+y
map <leader>p "+p

"" normal mode
" disables the spacebar and q in normal mode
nnoremap <SPACE> <Nop>
nnoremap q <Nop>

" map redo to U
nnoremap U <C-r>
" map tab to switch window
nnoremap <Tab> <C-w>w

" Neotree (more keymaps in neotree setup)
nnoremap <silent> <leader>e :Neotree toggle<CR>

" lsp
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap <leader>a <cmd>lua vim.lsp.buf.code_action()<cr>
nnoremap <leader>c <cmd>lua vim.lsp.buf.format()<cr>
nnoremap <leader>k <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap <leader>d <cmd>lua vim.diagnostic.open_float()<cr>

" Telescope
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>S <cmd>Telescope treesitter<cr>
nnoremap gr <cmd>Telescope lsp_references<cr>
nnoremap gd <cmd>Telescope lsp_definitions<cr>
nnoremap <leader>s <cmd>Telescope lsp_document_symbols<cr>

" fold
nnoremap <leader>z za 

"" ======================================================================
"" Commands
"" ======================================================================

command E source ~/.config/nvim/init.vim
command R source ~/.config/nvim/init.vim
command PI PlugInstall
command PU PlugUpdate

"" ======================================================================
"" Theme and Highlights
"" ======================================================================

" set theme
colorscheme tokyonight-storm

" set cursorline appearance
set cursorline
hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE
hi CursorLineNr cterm=BOLD ctermbg=8

" set popup menu and its selected item appearance
hi Pmenu cterm=NONE ctermbg=Black ctermfg=Blue
hi PmenuSel cterm=BOLD ctermbg=DarkGray ctermfg=Blue

" sets the syntax highlighting colors
hi String ctermfg=DarkGreen
hi Number ctermfg=Blue
hi Special ctermfg=Blue
hi Type ctermfg=Green
hi Comment guifg=#A3BE8C

hi DiagnosticUnnecessary guifg=#737aa2

"" ======================================================================
"" Plugin Todo Comments (Better comments)
"" ======================================================================

hi TodoBgFIX ctermbg=LightRed 
hi TodoFgFIX ctermfg=Red 
hi TodoSignFIX cterm=BOLD 
hi TodoBgTODO ctermbg=Blue
hi TodoFgTODO ctermfg=LightGray 
hi TodoSignTODO cterm=BOLD
hi TodoBgHACK ctermbg=DarkBlue ctermfg=White cterm=BOLD
hi TodoFgHACK ctermfg=White
hi TodoBgWARN ctermbg=Yellow 
hi TodoSignWARN cterm=BOLD
hi todobgfix guibg=#bf616a guifg=#d8dee9 gui=bold
hi todobgtodo guibg=#d08770 guifg=#3b4252 gui=bold
hi todobghack guibg=#a3be8c guifg=#3b4252 gui=bold
hi todobgwarn guibg=#ebcb8b guifg=#2e3440 gui=bold

lua << EOF
  require("todo-comments").setup {
    signs = false
  }
EOF

"" ======================================================================
"" Plugin Floaterm (terminal in the floating window)
"" ======================================================================

let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_keymap_new    = '<F9>'
let g:floaterm_keymap_kill    = '<F8>'
let g:floaterm_keymap_prev   = '<F10>'
let g:floaterm_keymap_next   = '<F11>'
let g:floaterm_borderchars   = '─│─│╭╮╯╰'
let g:floaterm_title         = '─ ʕ •ᴥ•ʔﾉ $1/$2 ─'

"" ======================================================================
"" Plugin Airline (Better tabline)
"" ======================================================================

" enable highlighting cache for airline
let g:airline_highlighting_cache = 1

" set airline theme to nord
" to have color in different mode, run setupTheme.bash after installing the plugin
" let g:airline_theme='nord_minimal'
let g:airline_theme='catppuccin'

" enable powerline fonts
let g:airline_powerline_fonts = 1

let g:airline#extensions#whitespace#checks = ['conflicts']
let g:airline#extensions#whitespace#symbol = ''
let g:airline#extensions#whitespace#conflicts_format = '%s'

function! AirlineInit()
  " display the current time
  let g:airline_section_b = airline#section#create(['%{strftime("%H:%M:%S")}'])

  " Remove powerline characters in line numbers
  call airline#parts#define('linenr', {
    \ 'raw': '%l',
    \ 'accent': 'bold'})
  call airline#parts#define('maxlinenr', {
    \ 'raw': '/%L',
    \ 'accent': 'bold'})
  call airline#parts#define('colnr', {
    \ 'raw': ':%v',
    \ 'accent': 'bold'})

  " line number display
  let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr', 'colnr'])

  " error display
  let g:airline_section_error = airline#section#create(['ycm_error_count', 'syntastic-err', 'eclim', 'languageclient_error_count', 'ʕ•ᴥ• ʔ'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

"" ======================================================================
"" Plugin Neo Tree (File Explorer)
"" ======================================================================


lua << EOF
  require("neo-tree").setup {
    open_on_setup = true,
    default_component_configs = {
      modified = {
        symbol = "󰏫"
      },
      git_status = {
        symbols = {
          untracked = "?"
        }
      }
    },
    window = {
      width = 30,
      mappings = {
        ["S"] = "open_split",
        ["E"] = "open_vsplit",
        ["l"] = "open",
        ["h"] = "close_node",
      }
    }
  }
EOF

"" ======================================================================
"" Plugin Pretty Fold (Better folding appearance)
"" ======================================================================

" disable default folding when opening a file
set foldlevel=99

lua << EOF
  require("pretty-fold").setup {
    sections = {
      left = {
         'content',
      },
      right = {
         ' ', 'number_of_folded_lines', ': ', 'percentage', ' '
      }
    },
    fill_char = '-'
  }
EOF

"" ======================================================================
"" Plugin Treesitter (Syntax Highlighting, folding, and indentation)
"" ======================================================================

lua << EOF
  require('nvim-treesitter.configs').setup {
    auto_install = false,
    highlight = {
      enable = true,
      disable = function(lang, buf)
          local max_filesize = 1 * 1024 * 1024  -- 1 MB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
              return true
          end
      end,
    },
    indent = {
      enable = true
    }
  }
  
  -- " set foldmethod to treesitter
  vim.wo.foldmethod = 'expr'
  vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
EOF


"" ======================================================================
"" Plugin Rainbow Delimiters
"" ======================================================================

let g:rainbow_delimiters = {
    \ 'strategy': {
        \ '': rainbow_delimiters#strategy.global,
        \ 'vim': rainbow_delimiters#strategy.local,
    \ },
    \ 'query': {
        \ '': 'rainbow-delimiters',
        \ 'lua': 'rainbow-blocks',
    \ },
    \ 'priority': {
        \ '': 110,
        \ 'lua': 210,
    \ },
    \ 'highlight': [
        \ 'RainbowDelimiterWhite',
        \ 'RainbowDelimiterBlack',
        \ 'RainbowDelimiterBlue',
        \ 'RainbowDelimiterOrange',
        \ 'RainbowDelimiterPink',
        \ 'RainbowDelimiterViolet',
        \ 'RainbowDelimiterCyan',
    \ ],
\ }

"" ======================================================================
"" Plugin Rainbow Delimiters
"" ======================================================================

lua << EOF
  require("ibl").setup()
EOF

"" ======================================================================
"" Plugin Comment (Quick Comment)
"" ======================================================================

lua << EOF
  require('Comment').setup()
EOF

"" ======================================================================
"" Plugin CamelCaseMotion
"" ======================================================================

let g:camelcasemotion_key = '\'

"" ======================================================================
"" Plugin Autopairs
"" ======================================================================

lua << EOF
  require("nvim-autopairs").setup {}
EOF

"" ======================================================================
"" Plugin Telescope
"" ======================================================================

lua << EOF
  local actions = require("telescope.actions")
  require("telescope").setup {
    defaults = {
      mappings = {
        i = {
          ["<ESC>"] = actions.close
        },
      },
    },
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_cursor {}
      },
    }
  }

  require("telescope").load_extension("ui-select")
EOF


"" ======================================================================
"" LSP and Mason
"" ======================================================================

lua << EOF
  require("mason").setup()
  require("mason-lspconfig").setup()

  local capabilities = require("cmp_nvim_lsp").default_capabilities()

  require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {
          capabilities = capabilities,
          init_options = {
            preferences = {
              ["typescript.format.insertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets"] = true,
              ["typescript.format.insertSpaceAfterOpeningAndBeforeClosingEmptyBraces"] = true,
              ["typescript.format.insertSpaceAfterOpeningAndBeforeClosingJsxExpressionBraces"] = true,
              ["typescript.format.insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces"] = true,
           }
          }
        }
    end,
  }

-- " nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  -- " map keys
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4), 
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm {
      select = true,
    },
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  }),
  -- " Auto select first item
  preselect = cmp.PreselectMode.Item,
  -- " Set window style
  window = {
      completion = cmp.config.window.bordered(),
  },
}

EOF
