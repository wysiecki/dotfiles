set ttyfast
set lazyredraw
set regexpengine=1
	""""""""""""""""""""""""""""""""
	"
	" PACKAGE MANAGEMENT

	""""""""""""""""""""""""""""""""
	" not a vi
set nocompatible
set encoding=utf-8
set shell=/bin/sh
set encoding=utf-8
set tags=tags,~/.vim/tags
	" set tags=./tags

	" start vundler
	filetype off
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()

" core plugins
Bundle "gmarik/vundle"
" Bundle "sjl/gundo.vim"
Bundle "vim-airline/vim-airline"
Bundle 'vim-airline/vim-airline-themes'

Bundle "kien/ctrlp.vim"

" Bundle 'Shougo/vimproc.vim', { 'do': 'make' }
" Bundle 'Shougo/unite.vim'
" Bundle 'rstacruz/vim-fastunite'
"
" Bundle 'Shougo/neomru.vim'
" Bundle 'Shougo/unite-outline'
" Bundle 'tsukkee/unite-tag'
"
" map <C-p> [unite]p

" remember foldig
" Bundle "kopischke/vim-stay"
Bundle "scrooloose/syntastic.git"
Bundle "vim-scripts/tComment"
" Bundle "tpope/vim-surround"
" Bundle "mileszs/ack.vim"
Bundle "rking/ag.vim"
" Bundle "edsono/vim-matchit"
Bundle "tpope/vim-fugitive"
" Bundle "jiangmiao/auto-pairs"
Bundle "xolox/vim-session"
Bundle "xolox/vim-misc"
Bundle "airblade/vim-gitgutter"
Bundle "Lokaltog/vim-easymotion"
Bundle "rhysd/clever-f.vim"
Bundle "scrooloose/nerdtree"
" Bundle "vim-scripts/taglist.vim"
Bundle "ervandew/supertab"
Bundle "shawncplus/phpcomplete.vim"
" Bundle "Valloric/MatchTagAlways"
Bundle "tobyS/vmustache"
Bundle "tobyS/pdv"
Bundle "SirVer/ultisnips"
Bundle "vim-scripts/phpfolding.vim"
" Bundle "joonty/vdebug"
" Bundle "mattn/emmet-vim"
Bundle "alvan/vim-php-manual"
Bundle "altercation/vim-colors-solarized"
Bundle "MattesGroeger/vim-bookmarks"

" better indentation of html inside php
" Bundle "captbaritone/better-indent-support-for-php-with-html"
" Bundle 'vim-scripts/ZoomWin'
" leader e prepeared substitution
" Bundle 'wincent/scalpel'
"
" Bundle "Shougo/neocomplete.vim"

" Bundle "Shougo/vimproc.vim"
" Bundle "Shougo/unite.vim"
" Bundle "m2mdas/phpcomplete-extended"

" Bundle "mkusher/padawan.vim"

" omnifunc=padawan#Complete
" Bundle "Valloric/YouCompleteMe"

" Bundle "edkolev/tmuxline.vim"

" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 0
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '[^. \t]->\h\w*\|\h\w*::'


" Bundle "Shougo/deoplete.nvim"
" autocmd FileType php setlocal omnifunc=phpcd#CompletePHP
" let g:deoplete#enable_at_startup = 1
"
" g:phpcomplete_index_composer_command='/usr/local/bin/composer'
" set omnifunc=phpcomplete#CompletePHP
" set omnifunc=phpcomplete_extended#CompletePHP
" autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" let g:deoplete#auto_completion_start_length = 1
Bundle "jonathanfilip/vim-lucius"
Bundle "Xuyuanp/nerdtree-git-plugin"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


syntax on

" colorscheme solarized
colorscheme lucius
set background=light

let g:airline_theme="marcin"
let g:airline_powerline_fonts=1
let g:airline_section_warning = airline#section#create([ "syntastic"  ])
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
" set fillchars+=stl:\ ,stlnc:\
let mapleader=','
set laststatus=2"

let g:solarized_termcolors= 256 
" let g:solarized_visibility = "low"
let g:DisableAutoPHPFolding = 1
let g:hardtime_default_on = 1
" colorscheme lucius
" set background=light
" enable all the plugins
filetype plugin indent on

" Syntastic  {
    let g:syntastic_javascript_checkers = ['jsl']
    let g:syntastic_enable_signs = 1
    let g:syntastic_error_symbol = '✗'
    let g:syntastic_style_error_symbol = '✠'
    let g:syntastic_warning_symbol = '∆'
    let g:syntastic_style_warning_symbol = '≈'
    " Configure syntastic syntax checking to check on open as well as save.
    let g:syntastic_check_on_open=1
    let g:syntastic_aggregate_errors=1
    let g:syntastic_auto_jump=2
	let g:syntastic_quiet_messages = { "type": "style"  }
	"""""""let g:syntastic_php_phpcs_args="--standard=PSR2 -n --report=csv"
	"let g:syntastic_php_phpcs_args="--standard=PSR1"

    " Don"t show specific errors when editing HTML-types.
    let g:syntastic_html_tidy_ignore_errors = [ '<input> proprietary attribute "role"',
                                                    \'<i> proprietary attribute "rowid"',
                                                    \"trimming empty <i>",
                                                    \'<img> lacks "alt" attribute',
                                                    \"trimming empty <span>",
                                                    \"<input> proprietary attribute \"autocomplete\"",
                                                    \"proprietary attribute \"role\"",
                                                    \"proprietary attribute \"hidden\"",
                                                \]
" PHP {
   let php_htmlInStrings         = 1 " Syntax highlight HTML code inside PHP strings.
   let php_sql_query             = 1 " Syntax highlight SQL code inside PHP strings.
   " let php_noShortTags           = 1 " Disable PHP short tags.
   let php_parent_error_close    = 1
   let php_parent_error_open     = 1
   " let php_alt_comparisons       = 1
   " let php_alt_assignByReference = 1
" }

" Always splits to the right and below
set splitright
set splitbelow

" Boost performance of rendering long lines
set synmaxcol=800

" Lower the delay of escaping out of other modes
" set timeout timeoutlen=1000 ttimeoutlen=1
set timeout timeoutlen=1000 ttimeoutlen=1
""""""""""""""""""""""""""""""""
"
" SETTINGS & KEYBINDINGS
"
""""""""""""""""""""""""""""""""
" set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set ruler
set hidden
set ignorecase
set smartcase
set showmatch
set incsearch
set hls
set relativenumber
set number
set ls=2
set cursorline
" set nowrap
set wrap linebreak
set linebreak
set showbreak=↳\ 
set backspace=indent,eol,start
set shell=/bin/bash
set completeopt -=preview
"set textwidth=100
set wildmenu
set wildignore+=*.bpm,*.gif,*.png,*.jpg,*.ico,.DS_Store,.git,yii-*
" set wildmode=longest,list,full
set wildmode=longest:full,full
set mouse=a
if has("mouse_sgr")
	set ttymouse=sgr
else
	set ttymouse=xterm2
end
set ttyfast
set noshowmode
set cmdheight=1
" set autoread

" backup/persistance settings
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backupskip=/tmp/*,/private/tmp/*"
set backup
set writebackup
set noswapfile
set t_Co=256
set gfn=Source\ Code\ Pro\ for\ Powerline:h14
:imap § ->

" persist (g)undo tree between sessions
set undofile
set history=1000
set undolevels=1000

" set <leader>
let mapleader=","

" show trailing whitespaces
set list
set listchars=tab:.\ ,trail:¬,nbsp:.,extends:❯,precedes:❮
augroup ListChars2
    au!
    autocmd filetype go set listchars+=tab:\ \ 
    autocmd ColorScheme * hi! link SpecialKey Normal
augroup END

" syntax highlighting

" autocmd FileType * set noexpandtab

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "yes"
let g:session_autosave_periodic = 2
let g:session_command_aliases = 1
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2


" visual reselect of just pasted
nnoremap gp `[v`]


" ctrlP config
let g:ctrlp_map = "<c-p>"
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'


" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap / /\v


" clever-f prompt
let g:clever_f_show_prompt = 1
let g:clever_f_across_no_line = 1

if executable("ag")
  let g:ackprg = "ag --nogroup --column"
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" git and ack stuff
let g:gitgutter_enabled = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0


""""""""""""""""""""""""""""""""
"
" COOL HACKS
"
""""""""""""""""""""""""""""""""
" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Visual Mode */# from Scrooloose
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>

highlight search ctermfg=white ctermbg=3423513

""""""""""""""""""""""""""""""""
"
" BUG WORKAROUNDS
"
""""""""""""""""""""""""""""""""
" realign buffers when iterm goes fullscreen
augroup FixProportionsOnResize
  au!
  au VimResized * exe "normal! \<c-w>="
augroup END

" vim mode-switch lag fix
if ! has("gui_running")
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
if has("gui_running")
	set go-=r
	set go-=L
	set go-=T
endif

" macos vs linux tclipboard
if has("mac")
  set clipboard+=unnamed
else
  set clipboard=unnamedplus
endif
if has("nvim")
else
	" set term=screen-256color
endif

" make C-a, C-x work properly
set nrformats=

" potential lag fix
let g:matchparen_insert_timeout=1
" set cc=95
set colorcolumn=95

""""""""""""""""""""""""""""""""
"
" THINGS TODO ON NEW INSTALL
"
""""""""""""""""""""""""""""""""
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
" Inside of ~/.vim make /tmp, inside of which mkdir swap backup undo
"
" install ctags, ack, ag
" sudo packer -S silver-searcher-git ack ctags
"
" cd .vim/bundle/tern_for_vim/ && npm install
" npm install -g jshint


" FOLDING
"set foldenable          " enable folding
"set foldlevelstart=10   " open most folds by default
"set foldnestmax=10      " 10 nested fold max
"set foldmethod=syntax   " fold based on indent level
"set foldexpr=strlen(substitute(getline(v:lnum),'^\\s*[0-9]\.[0-9]*\\s*[0-9]\\(\\s*\\).*$','\\1',\"g\")) 
"set foldmethod=expr

" Auto resize Vim splits to active split
" set winwidth=184
" set winheight=15
" set winminheight=15
" set winheight=999

" my bindings

" switch between windows
" g:UltiSnipsListSnippets <c-tab>
let g:UltiSnipsSnippetsDir        = '~/.vim/UltiSnips/'
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php' : 1,
    \}
" let g:toggleTabs = 1
set showtabline=2


" nnoremap <leader>; <C-R>=Semicolonfun()<CR>
fun! Semicolonfun() "{{{
  call setline(line('.'), substitute(getline('.'), '\s*$', ';', ''))
  return "\<End>"
endfunction "}}}
let g:phpcomplete_mappings = {
   \ 'jump_to_def': '<C-]>',
   \ 'jump_to_def_split': '<C-W><C-]>',
   \ 'jump_to_def_vsplit': '<C-W><C-\>',
   \}
" in PHP $ is a keyword
setlocal iskeyword-=\$

set scrolloff=5


inoreabbrev teh the
inoreabbrev flase false
"
" PHP COMPLETE
" autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ['&completefunc:<c-n>', '&omnifunc:<c-x><c-o>']


" TAGLIST
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Split_Window = 1
let Tlist_WinHeight = 15
" com TTToggle NERDTreeToggle | TlistToggle | wincmd l
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 60
let Tlist_Close_On_Select = 1 "close taglist window once we selected something
let Tlist_Exit_OnlyWindow = 1 "if taglist window is the only window left, exit vim
let Tlist_Show_Menu = 1 "show Tags menu in gvim
let Tlist_Show_One_File = 1 "show tags of only one file
let Tlist_GainFocus_On_ToggleOpen = 1 "automatically switch to taglist window
let Tlist_Highlight_Tag_On_BufEnter = 1 "highlight current tag in taglist window
let Tlist_Process_File_Always = 1 "even without taglist window, create tags file, required for displaying tag in statusline
let Tlist_Use_Right_Window = 1 "display taglist window on the right
let Tlist_Display_Prototype = 1 "display full prototype instead of just function name"

" VEDBUG
" let g:vdebug_options["break_on_open"]=0
let g:vdebug_options = {"break_on_open" : 0}

" MAPPINGS
set pastetoggle=<leader>0
nnoremap <leader>1 :NERDTreeToggle<CR>
nnoremap <leader>2 :bp<CR>
nnoremap <leader>3 :bn<CR>
nnoremap <leader>4 :TlistToggle<CR>
nnoremap <leader>5 :GundoToggle<CR>
nnoremap <leader>6 :call pdv#DocumentWithSnip()<CR>
nnoremap <leader>7 :call pdv#DocumentCurrentLine()<CR>
nnoremap <leader>8 <Esc>:EnableFastPHPFolds<Cr>
nnoremap <leader>9 <Esc>:EnablePHPFolds<Cr>
" map <F10> <Esc>:DisablePHPFolds<Cr>
" Sessions
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>


" better scrolling
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

" consistent menu navigation
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

" intellij style autocomplete shortcut
inoremap <C-Space> <C-x><C-o>
nnoremap <leader>t :CtrlPMRU<CR>
nnoremap <leader>bp :CtrlPBuffer<CR>

" easy motion rebinded
nmap <leader>f <Plug>(easymotion-f2)
nmap <leader>F <Plug>(easymotion-F2)
"

"map next-previous jumps
nnoremap <leader>m <C-o>
nnoremap <leader>. <C-i>
" Use :Subvert search
nnoremap <leader>// :S /
vnoremap <leader>// :S /

" Use regular replace
nnoremap <leader>s :%s /
vnoremap <leader>s :%s /

" Use :Subvert replace
nnoremap <leader>S :%S /
vnoremap <leader>S :%S /
nnoremap <leader>G mG:Git! 
nnoremap <leader>g :Git 
nnoremap <leader>A :!ag 
nnoremap <leader>a :Ag! 
nnoremap <leader>hh :call clearmatches()<CR>:noh<CR>
nnoremap <leader>q :bp<cr>:bd #<cr>

" move windows
nnoremap <silent> <Right> <c-w>l
nnoremap <silent> <Left> <c-w>h
nnoremap <silent> <Up> <c-w>k
nnoremap <silent> <Down> <c-w>j
nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

" move tabs
nmap <leader>t :tabn<cr>
" switch next buffer
nnoremap <leader><leader> <c-^>
" space open/closes folds
nnoremap <space> za
inoremap <S-Tab> <esc>A
" :imap kk :w<CR>
" fast save
nmap <leader>w :w!<cr>

" regenerate tags file
nmap <leader>tt :!ctags -R --fields=+aimS --languages=php --totals=yes<CR>

" open cheatsheet
" nmap <leader>h :sp ~/dotfiles/cheatsheet.txt<CR>
nmap <leader>h :h cheat<CR>
" open yii2 cheatsheet
nmap <leader>y :sp ~/dotfiles/yii2.txt<CR>
" remove hl
map <silent> <leader><cr> :noh<cr>
:nmap <D-w> <C-w>
" saving
" move on wrapped lines
map j gj
map k gk
" set a ; at the end of the line
nnoremap <leader>; :call Semicolonfun()<CR>
" highlight ajustment
highligh MatchParen cterm=bold ctermbg=none ctermfg=red

" PHPDoc settings
if !exists("g:pdv_cfg_Author")
	let g:pdv_cfg_Author = "Martin von Wysiecki <wysiecki@gmail.com>"
endif
let g:buftabline_show = 2
" nmap <Tab> :bnext<cr>
" nmap <S-Tab> :bprevious<cr>
