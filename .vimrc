syntax on

nnoremap tn  :tabnew<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tc  :tabclose<CR>

vnoremap <C-y> : !/mnt/c/Windows/System32/clip.exe<cr>u''
noremap <C-o> :read !/mnt/c/Windows/System32/paste.exe <cr>
noremap! <C-o> <esc>:read !/mnt/c/Windows/System32/paste.exe <cr>

let mapleader = ","

set hlsearch
set incsearch

set nocompatible              " be improved, required
filetype off                  " required

" change the indent length
set tabstop=4
set shiftwidth=4

" turn off annotation
set fo-=r

set shortmess+=I

set number
set relativenumber

set laststatus=2

set backspace=indent,eol,start

" Maps space to colon, time saver
nmap <space> :

set autoindent
set hidden

set ignorecase
set smartcase

" Vim can highlight whitespaces for you in a convenient way:
set list
set listchars=tab:>_,trail:.,extends:#,nbsp:.

nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

set noerrorbells visualbell t_vb=

set mouse+=a

" Nav to the lastly used tab
let g:lasttab = 1
nmap tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Undo buffer
if has('persistent_undo')      "check if your vim version supports it
	set undofile                 "turn on the feature
	set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

" Javascript syntax fix
autocmd BufRead *.jsx set syntax=javascript

" Split remapping
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>


"
" Plugins
"
call plug#begin('~/.vim/plugged')

" Color Schemes
Plug 'joshdick/onedark.vim'
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
	if (has("nvim"))
		"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
	"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
	" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
	if (has("termguicolors"))
		set termguicolors
	endif
endif

" EasyMotion
Plug 'easymotion/vim-easymotion'

" All of your Plugins must be added before the following line
call plug#end()


" Color
set t_Co=256
set background=dark
colorscheme onedark
