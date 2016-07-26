
## dotfiles

This are my two cents for PHP development with VIM. (Vim as PHP-IDE)

With pretty neat code-autocomplete. Almost intelligent. :-)

Vim has to be compiled with +lua.

Tested on OSX and Ubuntu-Linux.

### following .vim dir structure:

.vim/<br>
├── backup (vim backup dir)<br>
├── bundle (with at least vundle)<br>
├── session (saved sessions)<br>
├── swap (swp files)<br>
└── tags (ctags files)<br>


Vundle needs to be installed first:
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

symlink ~/dotfiles/vimrc to ~/.vimrc
symlink ~/dotfiles/doc to ~/.vim/doc

and then:

:BundleInstall

:h cheat OR <LEADER>h will bring you to my cheatsheet help file for further informations about mapping and other stuff.

### Used plugins:

gmarik/vundle
sjl/gundo.vim
vim-airline/vim-airline
vim-airline/vim-airline-themes
kien/ctrlp.vim
kopischke/vim-stay
scrooloose/syntastic.git
vim-scripts/tComment
tpope/vim-surround
mileszs/ack.vim
rking/ag.vim
edsono/vim-matchit
tpope/vim-fugitive
jiangmiao/auto-pairs
xolox/vim-session
xolox/vim-misc
airblade/vim-gitgutter
Lokaltog/vim-easymotion
rhysd/clever-f.vim
scrooloose/nerdtree
vim-scripts/taglist.vim
ervandew/supertab
shawncplus/phpcomplete.vim
Valloric/MatchTagAlways
tobyS/vmustache
tobyS/pdv
SirVer/ultisnips
vim-scripts/phpfolding.vim
joonty/vdebug
mattn/emmet-vim
alvan/vim-php-manual
altercation/vim-colors-solarized
MattesGroeger/vim-bookmarks
captbaritone/better-indent-support-for-php-with-html
vim-scripts/ZoomWin
Shougo/neocomplete.vim
jonathanfilip/vim-lucius
Xuyuanp/nerdtree-git-plugin

