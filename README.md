dotfiles
========
This is my two cents for PHP development with VIM. (Vim as PHP-IDE)

With pretty neat code-autocomplete. Almost intelligent. :-)

Vim has to be compiled with +lua.

Tested on OSX and Ubuntu-Linux.

<leader>h gives a cheat-sheet.

following .vim dir structure:

.vim/<br>
├── backup (vim backup dir)<br>
├── bundle (with at least vundle)<br>
├── session (saved sessions)<br>
├── swap (swp files)<br>
└── tags (ctags files)<br>


Vundle needs to be installed first:
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

and then:

:PluginInstall

