dotfiles
========
following .vim dir structure:

.vim/
├── backup (vim backup dir)
├── bundle (with at least vundle)
├── session (saved sessions)
├── swap (swp files)
└── tags (ctags files)


Vundle needs to be installed first:
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

and then:

:PluginInstall

