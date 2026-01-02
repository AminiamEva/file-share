call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'},
Plug 'lervag/vimtex',
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes',
Plug 'scrooloose/nerdtree',
Plug 'Xuyuanp/nerdtree-git-plugin',
Plug 'vim-syntastic/syntastic',
Plug 'jiangmiao/auto-pairs',
Plug 'MarcWeber/vim-addon-mw-utils',
Plug 'kana/vim-textobj-user',
Plug 'fadein/vim-FIGlet',
Plug 'preservim/nerdcommenter',
Plug 'frazrepo/vim-rainbow',
Plug 'jiangmiao/auto-pairs',
Plug 'lifepillar/vim-mucomplete',
Plug 'rust-lang/rust.vim',
Plug 'nikolvs/vim-sunbather',
Plug 'itchyny/lightline.vim',
Plug 'sonph/onehalf', {'rtp': 'vim/'},
" Initialize plugin system
call plug#end()

" set nocompatible              " be iMproved, required
" filetype off                  " required
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'sonph/onehalf', {'rtp': 'vim/'}
" call vundle#end()            " required
" filetype plugin indent on    " required

"vim
:set nu
:set noeb vb t_vb=
":colorscheme evening
:let mapleader = " "
":set spell
:let g:vimtex_compiler_enabled = 0
:set spell spelllang=en_gb,en_us,en
:set nospell
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
"vim

"leader-map
nmap <leader>f <Plug>(coc-codeaction)
xmap <leader>f <Plug>(coc-codeaction)
nmap <leader>a <Plug>(coc-codeaction-cursor)
nnoremap <leader>ss :setlocal spell!<CR>
"nmap <leader>c <Plug>(NERDCommenter-comment)
"nmap <leader>u <Plug>(NERDCommenter-uncomment)
nnoremap <leader>tt :botright terminal<CR>
nnoremap <leader>tn :NERDTreeToggle<CR>
nnoremap <Leader>mm :set mouse=a<CR>
nnoremap <Leader>mn :set mouse=<CR>
"leader-map

"Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:#extensions#tabline#enabled = 1
if !exists('g:_symbols')
let g:airline_symbols = {}
endif
"let g:_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
"let g:_right_sep = '▶'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
"Airline

"NERDCommenter
filetype plugin on
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
"NERDCommenter

"Rainbow
"au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1
"Rainbow

"Auto-pairs
au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})
"Auto-pairs

"mucomplete
let g:mucomplete#enable_auto_at_startup = 1
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c
let g:mucomplete#chains = {
    \ 'default' : ['dict', 'keyn', 'uspl'],
    \ }
set dictionary+=/usr/share/dict/words
set complete+=kspell
set dictionary+=/usr/share/vim/vim90/spell/en.utf-8.sug
set dictionary+=/usr/share/vim/vim90/spell/en.utf-8.spl
let g:mucomplete#completion_delay = 0
"mucomplete

"rust
syntax enable
filetype plugin indent on
let g:rustfmt_command = "rustfmt"
autocmd filetype rust nnoremap <F5> : <bar> exec 'RustRun'<CR>
autocmd filetype rust nnoremap <F6> : <bar> exec 'RustTest'<CR>
"rust
