set ttyfast
set lazyredraw
set regexpengine=1
let loaded_matchparen = 1
	""""""""""""""""""""""""""""""""
	"
	" PACKAGE MANAGEMENT

	""""""""""""""""""""""""""""""""
	" not a vi
set nocompatible
set encoding=utf-8
set shell=/bin/sh
set encoding=utf-8
" set tags=tags,~/.vim/tags
set tags=tags
let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

filetype off

call plug#begin('~/.vim/bundle')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'down': '~40%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-scripts/tComment'
" Plug 'vim-syntastic/syntastic'
" let g:syntastic_php_phpcs_args='--standard=PSR2'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'airblade/vim-gitgutter'
Plug 'Lokaltog/vim-easymotion'
Plug 'rhysd/clever-f.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'
" Plug 'Valloric/MatchTagAlways'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/phpfolding.vim'
" Plug 'joonty/vdebug'
" Plug 'mattn/emmet-vim'
Plug 'alvan/vim-php-manual'
let g:php_manual_online_search_shortcut = '<leader>p'
Plug 'Raimondi/delimitMate'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'jonathanfilip/vim-lucius'
Plug 'Xuyuanp/nerdtree-git-plugin'

" COLOR
Plug 'NLKNguyen/papercolor-theme'

" syntax highlight for bunch of languages
" Plug 'sheerun/vim-polyglot'
"
" enhanced php syntax

" special indent line
" Plug 'Yggdroot/indentLine'

" vim keys guide :WhichKey ','
" Plug 'liuchengxu/vim-which-key'

" adding , or ; at the end of line
Plug 'lfilho/cosco.vim'

" rename tabs
" :TabulousRename <string>
" Plug 'webdevel/tabulous'

let g:used_javascript_libs = 'jquery'
"

" match stuff
" Plug 'andymass/vim-matchup'
" better indentation of html inside php
" Plug 'captbaritone/better-indent-support-for-php-with-html'

" C-w o zoom in/out
Plug 'vim-scripts/ZoomWin'
" Plug 'wincent/scalpel'
"
"
" Plug 'beanworks/vim-phpfmt'
" let g:phpfmt_standard = 'PSR2'
" let g:phpfmt_command = '/home/wysiecki/.composer/vendor/bin/phpcbf'
"* Plug 'stephpy/vim-php-cs-fixer'
"* let g:php_cs_fixer_rules = "@PSR2"

" YAML
Plug 'tarekbecker/vim-yaml-formatter'

" params change => c2ina
" Plug 'wellle/targets.vim'

Plug 'christoomey/vim-tmux-navigator'

" autocmd FileType php setlocal omnifunc=ale#Complete

Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""""""""""""""""""""""""""""""""""""""""""""""
" git conflicted
" git config --global alias.conflicted '!vim +Conflicted'
Plug 'christoomey/vim-conflicted'

" (visual select) :Tab /=
Plug 'godlygeek/tabular'
"
Plug 'StanAngeloff/php.vim'

" GIT
Plug 'rbong/vim-flog'

call plug#end()

syntax on
" colorscheme solarized
set background=light
colorscheme PaperColor
" colorscheme solarized8_low
" colorscheme molokai

" parameter expansion for selected entry via Enter
" inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")

" cycle through completion entries with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>""


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



let g:airline_theme='papercolor'
" let g:airline_powerline_fonts=1
let g:airline#extensions#branch#empty_message = 'NO GIT'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#empty_message  =  "No SCM"
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#whitespace#enabled    =  0
let g:airline#extensions#syntastic#enabled     =  1
let g:airline#extensions#tabline#enabled       =  1
let g:airline#extensions#tabline#tab_nr_type   =  0 " tab number
let g:airline#extensions#tabline#fnamecollapse =  1 " /a/m/model.rb
let g:airline#extensions#hunks#non_zero_only   =  1 " git gutter
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
" set guifont=Source\ Code\ Powerline:h13
" let g:Powerline_symbols = 'unicode'
" set fillchars+=stl:\ ,stlnc:\
set laststatus=2"

let g:solarized_termcolors= 256
" let g:solarized_visibility = "low"
let g:DisableAutoPHPFolding = 1
let g:hardtime_default_on = 1
" enable all the plugins
filetype plugin indent on

"
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" PHP {
   let php_htmlInStrings         = 1 " Syntax highlight HTML code inside PHP strings.
   let php_sql_query             = 1 " Syntax highlight SQL code inside PHP strings.
   " let php_noShortTags           = 1 " Disable PHP short tags.
   let php_parent_error_close    = 1
   let php_parent_error_open     = 1
   " let php_alt_comparisons       = 1
   " let php_alt_assignByReference = 1
" }

""""""""""""""""""""""""""""""""
"
" SETTINGS & KEYBINDINGS
"
""""""""""""""""""""""""""""""""
" Always splits to the right and below
set splitright
set splitbelow

" Boost performance of rendering long lines
set synmaxcol=800

" Lower the delay of escaping out of other modes
set timeout timeoutlen=1000 ttimeoutlen=1

" set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
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
" set nocursorline
" set nowrap
set wrap linebreak
set linebreak
set showbreak=↳\
set backspace=indent,eol,start
set shell=/bin/bash
" set completeopt -=preview
"set textwidth=100
set wildmenu
set wildignore+=*.bpm,*.gif,*.png,*.jpg,*.ico,.DS_Store,.git,yii-*
set wildmode=longest:full,full
set mouse=a
set ttyfast
set noshowmode
set cmdheight=1
" set autoread

" backup/persistance settings
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set backupskip=/tmp/*,/private/tmp/*"
set backup
set writebackup
set noswapfile
set t_Co=256
set gfn=Source\ Code\ Pro\ for\ Powerline:h14
" imap ß ->
set t_ku=OA
set t_kd=OB
set t_kr=OC
set t_kl=OD

" persist (g)undo tree between sessions
set undofile
set history=8000
set undolevels=8000

" set <leader>
let mapleader=","

" show trailing whitespaces
set list
set listchars=tab:.\ ,trail:¬,nbsp:.,extends:❯,precedes:❮

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


" Keep search matches in the middle of the window.
nnoremap <silent>n nzzzv
nnoremap <silent>N Nzzzv
nnoremap <silent>* *zzzv

" nnoremap / /\v


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
"

" macos vs linux tclipboard
if has("mac")
  set clipboard+=unnamed
else
  set clipboard=unnamedplus
endif

" make C-a, C-x work properly
set nrformats=

" potential lag fix
let g:matchparen_insert_timeout=1
" mark right column
set colorcolumn=95


let g:UltiSnipsSnippetsDir        = '~/dotfiles/snips/'
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:pdv_template_dir = $HOME ."/dotfiles/phpdoc"
let g:pdv_cfg_Author = "MvWysiecki<wysiecki@gmail.com>"

let g:ulti_expand_or_jump_res = 0


let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php' : 1,
    \}
" let g:toggleTabs = 1
set showtabline=2


" in PHP $ is a keyword
setlocal iskeyword-=\$

set scrolloff=5


inoreabbrev teh the
inoreabbrev flase false
"

" set completeopt=longest,menuone


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

" easy motion rebinded
nmap <leader>f <Plug>(easymotion-f2)
nmap <leader>F <Plug>(easymotion-F2)
"

"map next-previous jumps
nnoremap <leader>. :Buffers<CR>
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
" nnoremap <leader>A :!ag
" nnoremap <leader>a :Ag!
nnoremap <leader>hh :call clearmatches()<CR>:noh<CR>
nnoremap <leader>q :bp<cr>:bd #<cr>


nnoremap <leader>a :Rg<space>
" search under cursor
nnoremap <leader>sw :exec "Rg ".expand("<cword>")<cr>

autocmd VimEnter * command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" FZF
"" Fuzzy find files.
map <C-p> :FZF<CR>
"" Ctrl + L, list open buffers. I use this alot.
nnoremap <Plug>(file-history) :History<CR>
nmap <leader>k <Plug>(file-history)

"" Search word under cursor.
nnoremap <Plug>(search-cursor-word) :Ag <C-R><C-W><CR>
nmap <leader>sw <Plug>(search-cursor-word)

" nnoremap <C-a> :Ag<CR>
" nnoremap <C-p> :Files<CR>
" nnoremap <C-b> :Buffers<CR>

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
" inoremap <S-Tab> <esc>A
" :imap kk :w<CR>
" fast save
nmap <leader>w :w!<cr>

" open cheatsheet
" nmap <leader>h :sp ~/dotfiles/cheatsheet.txt<CR>
nmap <leader>h :h cheat<CR>
" open yii2 cheatsheet
nmap <leader>y :sp ~/dotfiles/yii2.txt<CR>
nmap <leader>vv :sp ~/dotfiles/doc/vim.txt<CR>
" remove hl
map <silent> <leader><cr> :noh<cr>
:nmap <D-w> <C-w>
" saving
" move on wrapped lines
map j gj
map k gk

let g:buftabline_show = 2
" nmap <Tab> :bnext<cr>
" nmap <S-Tab> :bprevious<cr>

"" <TAB>
vnoremap <TAB>   >
nnoremap <TAB>   >>
" inoremap <C-TAB> <TAB>
vnoremap <S-TAB> <
nnoremap <S-TAB> <<
inoremap <S-TAB> <BackSpace>

" remove highlight on esc
nnoremap <silent> <esc> :noh<cr>

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

" `<Tab>`/`<S-Tab>` to move between matches without leaving incremental search.
" Note dependency on `'wildcharm'` being set to `<C-z>` in order for this to
" work.
cnoremap <expr> <C-Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>/<C-r>/' : '<C-z>'
cnoremap <expr> <S-Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>?<C-r>/' : '<S-Tab>'
"let g:gutentags_define_advanced_commands=1
" vmap <C-x> :w! ~/.vbuf<CR>      "copy the current visual selection to ~/.vbuf
" nmap <C-c> :.w! ~/.vbuf<CR>     "copy the current line to the buffer file if no visual selection
" nmap <C-v> :r ~/.vbuf<CR>       "paste the contents of the buffer file"

autocmd FileType javascript,css,php nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css,php imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

inoremap § ->

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <C-J> mz:m+<cr>`z
nmap <C-K> mz:m-2<cr>`z
vmap <C-J> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-K> :m'<-2<cr>`>my`<mzgv`yo`z

map C <Right>
map C <Right>
map C <Right>
map C <Right>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Searching with a preview and include gitignored files.
command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>, '--skip-vcs-ignores',
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%'),
      \                 <bang>0)
"

" Group the output of :ls by tabs and print it.
"
function! LsByTab(bang, args)
    let ls_output = s:LsOutput(a:bang, a:args)

    " Iterate over all tabs.
    for tab in gettabinfo()
        echo '===== tab' tab.tabnr '====='
        " Get the buffer numbers for the current tab.
        let buffers = tabpagebuflist(tab.tabnr)
        " Construct a regular expression that matches the buffer numbers
        " at the start of the lines of the :ls output.
        let buffers_pat = '^\s*\(' . join(buffers, '\|') . '\)\>'
        " Filter the lines from the :ls output so that only the lines for
        " the buffers of the current tab remain.
        let tab_buffers = filter(copy(ls_output), 'v:val =~ buffers_pat')
        " Print the info for the current tab.
        echo join(tab_buffers, "\n")
    endfor
endfunction

" bindind for phpactor
" autocmd FileType php inoremap <Leader>us <Esc>:call phpactor#UseAdd()<CR>
" autocmd FileType php noremap <Leader>us :call phpactor#UseAdd()<CR>
" autocmd FileType php inoremap <Leader>qa <Esc>:call phpactor#Hover()<CR>
" autocmd FileType php noremap <Leader>qa :call phpactor#Hover()<CR>
" " autocmd FileType php noremap <Leader>] :call phpactor#GotoDefinition()<CR>
" " autocmd FileType php inoremap <Leader>qa <Esc>:ALEHover<CR>
" " autocmd FileType php noremap <Leader>qa :ALEHover<CR>
" autocmd FileType php noremap <Leader>] :ALEGoToDefinition<CR>
" autocmd FileType php noremap ] :ALEGoToDefinition<CR>
" " autocmd FileType php noremap ] :ALEGoToDefinition<CR>

command! -bang -nargs=? LsByTab call LsByTab(<q-bang>, <q-args>)

" search highlight
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

" highlight ajustment
highlight MatchParen cterm=bold ctermbg=none ctermfg=red
hi phpUseNamespaceSeparator guifg=#808080 guibg=NONE gui=NONE
hi phpClassNamespaceSeparator guifg=#808080 guibg=NONE gui=NONE
syn match phpParentOnly "[()]" contained containedin=phpParent
hi phpParentOnly guifg=#f08080 guibg=NONE gui=NONE

" Remap keys for gotos
nmap <silent> ] <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)