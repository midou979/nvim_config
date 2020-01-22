call plug#begin('~/.local/share/nvim/plugged')


Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
colorscheme gruvbox

"deoplete configuration"
let g:deoplete#enable_at_startup = 1

"deoplete-jedi configuration"
"make sure that the preview window disappear after auto-completion is done"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

:set colorcolumn=72

let g:NERDTreeIndicatorMapCustom = {
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
