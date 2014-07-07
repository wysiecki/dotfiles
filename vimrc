
set nocompatible

" number the lines.
set number

" show location of cursor using a horizontal line.
"set cursorline

" keep cursor in the middle of the screen while scrolling up and down.
"set scrolloff=999

" turn on syntax hightlighting.
syntax on
set number

"colorscheme delek
filetype off                  " required!
set tags=~/.vim/tags/meditel

let g:tagbar_ctags_bin='/usr/local/bin/ctags'
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
Plugin 'sjl/gundo.vim'
"Plugin 'shawncplus/phpcomplete.vim'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
"" PHPdoc Comments Ctrl + p
Plugin 'tobyS/pdv'
let g:pdv_template_dir = "/Users/wysiecki/.vim/bundle/pdv/templates"
Plugin 'tobyS/vmustache'
"Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'

"Plugin 'Shougo/vimproc'
"Plugin 'Shougo/unite.vim'
"Plugin 'm2mdas/phpcomplete-extended'
"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

nnoremap <leader>d :call pdv#DocumentCurrentLine()<CR>
nnoremap <leader>f :call pdv#DocumentWithSnip()<CR>

"Plugin 'spf13/PIV'
"Plugin 'phpfolding.vim'
Plugin 'UltiSnips'
"Plugin 'Auto-Pairs'

Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'isaacs/ack.vim'
Plugin 'tyok/nerdtree-ack'
"Plugin 'tpope/vim-fugitive'

"Plugin 'Shougo/vimproc'
"Plugin 'Shougo/unite.vim'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'tomtom/tcomment_vim'
"Plugin 'kien/ctrlp.vim'
"if has("gui_running")
""	Plugin 'wincent/Command-T'
""	Plugin 'Valloric/YouCompleteMe'
"endif


"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'joonty/vdebug.git'

Plugin 'Valloric/YouCompleteMe'


filetype plugin indent on
"set runtimepath+=~/.vim/ultisnips_rep

set background=light 
" light dark
set t_Co=256
set showmatch       " show matching brackets.

let g:session_autosave = 'yes'
let g:airline#extensions#tabline#enabled = 1
" airline
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif

""" Airline settings
" let g:airline_powerline_fonts = 1
let g:airline_detect_whitespace = 2
" Add the alternate buffer name next to the current file name
let g:airline_section_c = "%f%m %{bufname('#') != '' ? '('. expand('#:t') .')' : ''}"
" old

let g:airline_theme="powerlineish"
let g:airline_powerline_fonts=1
let g:airline_section_warning = airline#section#create([ "syntastic" ])
let g:airline#extensions#branch#empty_message  =  "No SCM"
let g:airline#extensions#whitespace#enabled    =  0
let g:airline#extensions#syntastic#enabled     =  1
let g:airline#extensions#tabline#enabled       =  1
let g:airline#extensions#tabline#tab_nr_type   =  1 " tab number
let g:airline#extensions#tabline#fnamecollapse =  1 " /a/m/model.rb
let g:airline#extensions#hunks#non_zero_only   =  1 " git gutter
let g:airline#extensions#tabline#fnamemod = ':t'
set guifont=Sauce\ Code\ Powerline:h13
let g:Powerline_symbols = 'unicode'
set laststatus=2
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
let mapleader=','
let g:airline_powerline_fonts = 1
set laststatus=2

set backupdir=~/.vim/backup/
set directory=~/.vim/swap/

" Show matching brackets when text indicator is over them
set showmatch

"Reselect visual block after indent/outdent"
vnoremap < <gv
vnoremap > >gv
"
" " Toggle NERDTree
map <Leader>m :NERDTreeToggle<CR>
map <Leader>r :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
"

""" Tagbar plugin settings
map <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_width = 25
let g:tagbar_iconchars = ['+', '-']

""" Syntastic settings
let g:syntastic_enable_highlighting = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = 'E'
let g:syntastic_style_error_symbol = 'S'
let g:syntastic_warning_symbol = 'W'
let g:syntastic_style_warning_symbol = 'S'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_php_checkers = ['php']
let g:syntastic_phpcs_disable=1
nmap <silent> <leader>v :SyntasticCheck<cr>

" Auto-open tagbar only if not in diff mode and the term wide enough to also
" fit an 80-column window (plus eight for line numbers and the fold column).
if &columns > 118
    if ! &diff
        au VimEnter * nested :call tagbar#autoopen(1)
    endif
else
    let g:tagbar_autoclose = 1
    let g:tagbar_autofocus = 1
endif

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4



" don't select first item, follow typing in autocomplete
set completeopt=longest,menuone,preview

set wildmenu                    		"wmnu:  enhanced ex command completion
set wildmode=longest:full,list:full  	"wim:   helps wildmenu auto-completion

set encoding=utf-8
set relativenumber              "rnu:   show line numbers relative to the current line; <leader>u to toggle
set number                      "nu:    show the actual line number for the current line in relativenumber
set showmode                    "smd:   shows current vi mode in lower left
set cursorline                  "cul:   highlights the current line
set showcmd                     "sc:    shows typed commands
set cmdheight=2                 "ch:    make a little more room for error messages
set sidescroll=2                "ss:    only scroll horizontally little by little
set scrolloff=1                 "so:    places a line between the current line and the screen edge
hi Pmenu ctermbg=238 gui=bold
set sidescrolloff=2             "siso:  places a couple columns between the current column and the screen edge
set laststatus=2                "ls:    makes the status bar always visible
set ttyfast                     "tf:    improves redrawing for newer computers
set history=200                 "hi:    number of search patterns and ex commands to remember
                                "       (also used by viminfo below for /, :, and @ options)
set viminfo='200                "vi:    For a nice, huuuuuge viminfo file

set switchbuf=usetab            "swb:   Jumps to first tab or window that contains specified buffer instead of duplicating an open window
set showtabline=1               "stal:  Display the tabbar if there are multiple tabs. Use :tab ball or invoke Vim with -p
set hidden                      "hid:   allows opening a new buffer in place of an existing one without first saving the existing one

" Type <F1> follwed by a buffer number or name fragment to jump to it.
" Also replaces the annoying help button. Based on tip 821.
map <F1> :ls<cr>:b<space>

" Quickly jump to a tag if there's only one match, otherwise show the list
map <F2> :tj<space>

" =====================================================================================
inoremap <leader>s <esc>:w<cr>
nnoremap <leader>s :w<cr>

nmap <F3> :Ack "<C-r>=expand("<cword>")<CR>"<CR>
"map <F1>	:w<CR>:bp<CR>
"map <F2>	:w<CR>:bn<CR>
"map <F5> <Esc>:EnableFastPHPFolds<Cr>
"map <F6> <Esc>:EnablePHPFolds<Cr>
"map <F7> <Esc>:DisablePHPFolds<Cr>
"
" switch between tabs
""nmap 	  <C-SPACE>  :if &modifiable && !&readonly && &modified <CR> :endif<CR>:bnext<CR>
nmap 	  <leader>l  :if &modifiable && !&readonly && &modified <CR> :endif<CR>:bnext<CR>
"nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :endif<CR>:bprevious<CR>
set hidden
" Switch to alternate file
nmap <Tab> :bnext<cr>
nmap <S-Tab> :bprevious<cr>
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> ss :split<CR>
nnoremap <silent> vv :vsplit<CR>
noremap <Up> <c-w>k
noremap <Down> <c-w>j
noremap <Right> <c-w>l
noremap <Left> <c-w>h

" Maps Omnicompletion to CTRL-space since ctrl-x ctrl-o is for Emacs-style RSI
inoremap <nul> <C-X><C-O>

" don't select first item, follow typing in autocomplete
set completeopt=longest,menuone,preview

""" Gundo settings
nnoremap <F7> :GundoToggle<cr>

"nnoremap      <C-SPACE>     i
imap          <C-SPACE>     <C-x><C-u>
"imap          <C-SPACE>     <C-x><C-o>
map   <Leader>.    :BufExplorer<CR>
map <Leader>x	:on<CR>
map <Leader>y 	:bd#<CR>
map <Leader><SPACE>	:w<CR>
vmap   <Leader><Space>   :TComment<CR>
" rekative line numbers
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set number
		highlight LineNr ctermfg=yellow
	else
		set relativenumber
		highlight LineNr ctermfg=green
	endif
endfunc


map <Leader>n :call NumberToggle()<cr>
":au FocusLost * :set number
":au FocusGained * :set relativenumber
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

" auto corrector
iab ture true
iab flase false
ia teh the
ia finction function 

" vim mode-switch lag fix
if ! has("gui_running")
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
if has("autocmd")
	au FileType php,phtml,javascript,xml set smartindent
endif
" testing
" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

let g:SuperTabDefaultCompletionType = "context"

" }}}

" ==============================================================================
" Auto commands
" ==============================================================================
" {{{
autocmd VimEnter * set vb t_vb=

" Current line highlighting
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

let g:xml_syntax_folding=1
au FileType xml  setlocal foldmethod=syntax
au FileType vim  setlocal foldmethod=marker | setlocal foldlevel=0
au FileType lua  setlocal foldmethod=marker | setlocal foldlevel=0
au FileType php  setlocal foldmethod=syntax | setlocal foldlevel=99 | setlocal foldlevelstart=99
au FileType html setlocal foldmethod=syntax

" ==============================================================================
" GUI
" ==============================================================================
" {{{

" remove toolbar and scrollbars
set guioptions-=T
set guioptions-=L
set guioptions-=R
set guioptions-=r
set nohls
set nowrap
