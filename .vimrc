syntax on
set number
set noshowmode
set encoding=utf-8

call plug#begin()

Plug 'vim-scripts/indentpython.vim'
Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'kien/ctrlp.vim'

call plug#end()

syntax enable
filetype plugin indent on

" youcompleteme configuration
let g:ycm_autoclose_preview_window_after_completion=1

let python_highlight_all=1
syntax on

" Virtual environment support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

set background=dark
colorscheme onedark

