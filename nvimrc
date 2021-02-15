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
set shell=/bin/sh
set encoding=utf-8
" set tags=tags,~/.vim/tags
set tags=tags
" let g:python_host_prog  = '/usr/local/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3'

filetype off

call plug#begin('~/.vim/bundle')
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'down': '~40%' }
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" iluminate same words
" Plug 'RRethy/vim-illuminate'

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
" Plug 'vim-scripts/taglist.vim'
"
" function view
Plug 'liuchengxu/vista.vim'
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_executive_for = {
  \ 'php': 'vim_lsp',
  \ }
let g:vista#renderer#enable_icon = 0
let g:vista_fzf_preview = ['right:30%']
" Plug 'Valloric/MatchTagAlways'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'vim-scripts/phpfolding.vim'
" Plug 'joonty/vdebug'
" Plug 'mattn/emmet-vim'
Plug 'alvan/vim-php-manual'
let g:php_manual_online_search_shortcut = '<leader>p'
" Plug 'Raimondi/delimitMate'
Plug 'MattesGroeger/vim-bookmarks'
" Plug 'jonathanfilip/vim-lucius'
Plug 'Xuyuanp/nerdtree-git-plugin'

" COLOR
" Plug 'altercation/vim-colors-solarized'
" Plug 'lifepillar/vim-solarized8'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'gruvbox-community/gruvbox'

" ANY JUMP <leader>j
Plug 'pechorin/any-jump.vim'

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

" auto close brackets
Plug 'jiangmiao/auto-pairs'

" rename tabs
" :TabulousRename <string>
" Plug 'webdevel/tabulous'
"
" WINDOWS MANAGER
" Plug 'yaronkh/vim-winmanip'

let g:used_javascript_libs = 'jquery'
"

" match stuff
" Plug 'andymass/vim-matchup'
" better indentation of html inside php
" Plug 'captbaritone/better-indent-support-for-php-with-html'

" C-w o zoom in/out
" Plug 'vim-scripts/ZoomWin'
" Plug 'wincent/scalpel'
"
"
" Plug 'beanworks/vim-phpfmt'
" let g:phpfmt_standard = 'PSR2'
" let g:phpfmt_command = '/home/wysiecki/.composer/vendor/bin/phpcbf'
"* Plug 'stephpy/vim-php-cs-fixer'
"* let g:php_cs_fixer_rules = "@PSR2"

" YAML
" Plug 'tarekbecker/vim-yaml-formatter'

" params change => c2ina
" Plug 'wellle/targets.vim'

Plug 'christoomey/vim-tmux-navigator'
" share clipboard tmux vim
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'

" autocmd FileType php setlocal omnifunc=ale#Complete

Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""""""""""""""""""""""""""""""""""""""""""""""
" git conflicted
" git config --global alias.conflicted '!vim +Conflicted'
" Plug 'christoomey/vim-conflicted'

" (visual select) :Tab /=
" Plug 'godlygeek/tabular'
"
" Plug 'StanAngeloff/php.vim'

" GIT :Flog
" Plug 'rbong/vim-flog'

call plug#end()

syntax on
" colorscheme solarized
" set background=dark
" colorscheme gruvbox
colorscheme PaperColor
set background=light
" colorscheme solarized8_low
" colorscheme molokai

" parameter expansion for selected entry via Enter
" inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")

" cycle through completion entries with tab/shift+tab
" inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
" inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>""
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
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
let g:airline#extensions#coc#enabled ='1'
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
set shortmess+=c
" set autoread

" backup/persistance settings
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set backupskip=/tmp/*,/private/tmp/*"
" set backup
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
" set writebackup
set noswapfile
set t_Co=256
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
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


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
  " let g:ackprg = "ag --nogroup --column"
  let g:ackprg = 'rg --vimgrep --type-not sql --smart-case --glob "!{storage/*,web/*,vendor/*,.git/*}"'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" git and ack stuff
" let g:gitgutter_enabled = 1
" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0


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
" if has("mac")
"   set clipboard+=unnamed
" else
"   set clipboard=unnamedplus
" endif

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

" set scrolloff=5
" set numberwidth=10


inoreabbrev teh the
inoreabbrev flase false
"

" set completeopt=longest,menuone


" VEDBUG
let g:vdebug_options = {"break_on_open" : 0}




" MAPPINGS
set pastetoggle=<leader>0
nnoremap <leader>1 :NERDTreeToggle<CR>
nnoremap <leader>2 :bp<CR>
nnoremap <leader>3 :bn<CR>
nnoremap <leader>4 :Vista finder<CR>
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
" nnoremap <leader>s :%s /
" vnoremap <leader>s :%s /

" Use :Subvert replace
" nnoremap <leader>S :%S /
" vnoremap <leader>S :%S /
" nnoremap <leader>G mG:Git!
" nnoremap <leader>g :Git
" nnoremap <leader>A :!ag
" nnoremap <leader>a :Ag!
nnoremap <leader>hh :call clearmatches()<CR>:noh<CR>
nnoremap <leader>q :bp<cr>:bd #<cr>


nnoremap <leader>a :Rg<space>
" search under cursor
nnoremap <leader>A :Rg<space><c-r><c-w><cr>

autocmd VimEnter * command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!{storage/*,web/*,vendor/*,.git/*}" --color "always" '.shellescape(<q-args>), 1,
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
" map <C-p> :GFiles<CR>
"" Ctrl + L, list open buffers. I use this alot.
nnoremap <Plug>(file-history) :History<CR>
nmap <leader>k <Plug>(file-history)


" move windows
nnoremap <silent> <Right> <c-w>l
nnoremap <silent> <Left> <c-w>h
nnoremap <silent> <Up> <c-w>k
nnoremap <silent> <Down> <c-w>j
nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j


" switch next buffer
" nnoremap <leader><leader> <c-^>
" space open/closes folds
nnoremap <space> za
" inoremap <S-Tab> <esc>A
" :imap kk :w<CR>
" fast save
" nmap <leader>w :w!<cr>

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

" remove highlight on esc
nnoremap <silent> <esc> :noh<cr>

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

" Switch between Tabs
nmap <S-Tab> :tabprev<cr>
nmap <Tab> :tabnext<cr>
nmap <leader>t :tabnew<cr>
" nmap <S-Tab> :bp<cr>
" nmap <C-Tab> :bn<cr>


autocmd FileType javascript,css,php nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css,php imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

inoremap £ ->

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <C-J> mz:m+<cr>`z
nmap <C-K> mz:m-2<cr>`z
vmap <C-J> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-K> :m'<-2<cr>`>my`<mzgv`yo`z

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

" Use ->[g-> and ->]g-> to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use X to show documentation in preview window.
nnoremap <silent> X :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)


set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add ->:Format-> command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" command! -bang -nargs=*  All
"   \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden --no-ignore-vcs --glob "!{storage/*,web/*,vendor/*,.git/*}"', 'down': '40%', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi --reverse' }))

" toggle relative numbers on insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
command! Gqf GitGutterQuickFix | copen

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction


" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
