syntax on

nnoremap tn  :tabnew<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tc  :tabclose<CR>

<<<<<<< HEAD
vnoremap <C-y> "+y
nnoremap <C-o> "*p
=======
vnoremap <C-y> : !/mnt/c/Windows/System32/clip.exe<cr>u''
noremap <C-o> :read !/mnt/c/Windows/System32/paste.exe <cr>
noremap! <C-o> <esc>:read !/mnt/c/Windows/System32/paste.exe <cr>

" vnoremap <C-y> "+y
" nnoremap <C-o> "*p
>>>>>>> f4f910f (update)

let mapleader = ","

set hlsearch
set incsearch

set nocompatible              " be improved, required
filetype off                  " required

" change the indent length
set tabstop=4
<<<<<<< HEAD
=======
set shiftwidth=4

" turn off annotation
set fo-=r
>>>>>>> f4f910f (update)

" set the runtime path to include vundle and initialize
call plug#begin('~/.vim/plugged')

" Color Schemes
Plug 'joshdick/onedark.vim'
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
<<<<<<< HEAD
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
=======
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
>>>>>>> f4f910f (update)
endif

" Icons
Plug 'ryanoasis/vim-devicons', {'commit': '58e57b6'}
" Files + devicons
function! Fzf_dev()
<<<<<<< HEAD
		let l:fzf_files_options = ' -m --bind ctrl-d:preview-page-down,ctrl-u:preview-page-up --preview "bat --color always --style numbers {2..}"'

		function! s:files()
				let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
				return s:prepend_icon(l:files)
		endfunction

		function! s:prepend_icon(candidates)
				let result = []
				for candidate in a:candidates
						let filename = fnamemodify(candidate, ':p:t')
						let icon = WebDevIconsGetFileTypeSymbol(filename, isdirectory(filename))
						call add(result, printf("%s %s", icon, candidate))
				endfor

				return result
		endfunction

		function! s:edit_file(items)
				let items = a:items
				let i = 1
				let ln = len(items)
				while i < ln
						let item = items[i]
						let parts = split(item, ' ')
						let file_path = get(parts, 1, '')
						let items[i] = file_path
						let i += 1
				endwhile
				call s:Sink(items)
		endfunction

		let opts = fzf#wrap({})
		let opts.source = <sid>files()
		let s:Sink = opts['sink*']
		let opts['sink*'] = function('s:edit_file')
		let opts.options .= l:fzf_files_options
		call fzf#run(opts)
=======
	let l:fzf_files_options = ' -m --bind ctrl-d:preview-page-down,ctrl-u:preview-page-up --preview "bat --color always --style numbers {2..}"'

	function! s:files()
		let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
		return s:prepend_icon(l:files)
	endfunction

	function! s:prepend_icon(candidates)
		let result = []
		for candidate in a:candidates
			let filename = fnamemodify(candidate, ':p:t')
			let icon = WebDevIconsGetFileTypeSymbol(filename, isdirectory(filename))
			call add(result, printf("%s %s", icon, candidate))
		endfor

		return result
	endfunction

	function! s:edit_file(items)
		let items = a:items
		let i = 1
		let ln = len(items)
		while i < ln
			let item = items[i]
			let parts = split(item, ' ')
			let file_path = get(parts, 1, '')
			let items[i] = file_path
			let i += 1
		endwhile
		call s:Sink(items)
	endfunction

	let opts = fzf#wrap({})
	let opts.source = <sid>files()
	let s:Sink = opts['sink*']
	let opts['sink*'] = function('s:edit_file')
	let opts.options .= l:fzf_files_options
	call fzf#run(opts)
>>>>>>> f4f910f (update)

endfunction

" NERDTree
Plug 'scrooloose/nerdtree'
map <silent> <C-e> :NERDTreeToggle<CR>
map <silent> <C-w> :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
<<<<<<< HEAD
		exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
		exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
=======
	exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
>>>>>>> f4f910f (update)
endfunction
au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
au VimEnter * call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
autocmd VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
highlight! link NERDTreeFlags NERDTreeDir

" Copilot
Plug 'github/copilot.vim'

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
<<<<<<< HEAD
		if (index(['vim','help'], &filetype) >= 0)
				execute 'h '.expand('<cword>')
		else
				call CocAction('doHover')
		endif
=======
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
>>>>>>> f4f910f (update)
endfunction

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'
" React code snippets
Plug 'epilande/vim-react-snippets'

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let g:fzf_action = {
<<<<<<< HEAD
						\ 'ctrl-t': 'tab split',
						\ 'ctrl-s': 'split',
						\ 'ctrl-v': 'vsplit'
						\ }
=======
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-s': 'split',
			\ 'ctrl-v': 'vsplit'
			\ }
>>>>>>> f4f910f (update)
nnoremap <c-p> :call Fzf_dev()<cr>
nnoremap <c-i> :Ag<cr>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
<<<<<<< HEAD
						\ call fzf#vim#ag(<q-args>,
						\                 <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
						\                         : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
						\                 <bang>0)
=======
			\ call fzf#vim#ag(<q-args>,
			\                 <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
			\                         : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
			\                 <bang>0)
>>>>>>> f4f910f (update)

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_theme = 'onedark'


" GitGutter
Plug 'airblade/vim-gitgutter'

" Code Formatter
Plug 'vim-autoformat/vim-autoformat'
nnoremap <Leader><Leader>a :Autoformat<cr>
autocmd BufWrite * :Autoformat

" Plugins for Javascript
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'ap/vim-css-color'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components'

" JSX
let g:jsx_ext_required = 0
let g:user_emmet_settings = {
<<<<<<< HEAD
						\  'javascript' : {
								\      'extends' : 'jsx',
								\  },
								\}
=======
			\  'javascript' : {
				\      'extends' : 'jsx',
				\  },
				\}
>>>>>>> f4f910f (update)

" Trailing Space
Plug 'bronson/vim-trailing-whitespace'
" Removes trailing spaces
function! TrimWhiteSpace()
<<<<<<< HEAD
		%s/\s\+$//e
=======
	%s/\s\+$//e
>>>>>>> f4f910f (update)
endfunction
nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" MultiCursor
Plug 'terryma/vim-multiple-cursors'

" MultiCursor is conflicting with deoplete
func! Multiple_cursors_before()
<<<<<<< HEAD
		call deoplete#init#_disable()
endfunc
func! Multiple_cursors_after()
		call deoplete#init#_enable()
=======
	call deoplete#init#_disable()
endfunc
func! Multiple_cursors_after()
	call deoplete#init#_enable()
>>>>>>> f4f910f (update)
endfunc

" Plugins for Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Plugins for Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Plugin for Fuzzy file lookup
Plug 'kien/ctrlp.vim'

" Plugin for smooth scroll
Plug 'yuttie/comfortable-motion.vim'


" Ack
Plug 'mileszs/ack.vim'

" Fugitive
Plug 'tpope/vim-fugitive'

<<<<<<< HEAD

=======
>>>>>>> f4f910f (update)
" Auto-complete

" All of your Plugins must be added before the following line
call plug#end()

" Color
set t_Co=256
syntax on
set background=dark
colorscheme onedark

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
<<<<<<< HEAD
		set undofile                 "turn on the feature
		set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
=======
	set undofile                 "turn on the feature
	set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
>>>>>>> f4f910f (update)
endif

" Javascript syntax fix
autocmd BufRead *.jsx set syntax=javascript

" Split remapping
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
