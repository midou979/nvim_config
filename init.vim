call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neomake/neomake'
Plug 'dense-analysis/ale'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'turbio/bracey.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }


call plug#end()
colorscheme gruvbox

set colorcolumn=80

"deoplete configuration"
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete_delay', 200)

"jedi autocompletion
let g:jedi#completions_enabled = 0

"deoplete-jedi configuration"
"make sure that the preview window disappear after auto-completion is done"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:airline_powerline_fonts = 1
let g:coc_git_status = 1

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

set nu

"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

map <C-n> :NERDTreeToggle<CR>

"makes pylint be out default python code cheker
let g:neomake_python_enabled_makers = ['pylint']

nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

"Pydocstring mapping"
map <C-p> :Pydocstring<CR>

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" For c programming"
" augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

syntax on
