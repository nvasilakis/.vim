# Simple vim Configuration #

## About ##

My  personal vim  configuration. Although  my .vimrc  is located  in the
[dotrc repository](http://github.com/nvasilakis/dotrc), the  rest of the
configuration  is in  here. Current  plug ins  include the  following --
interestingly, I plan to write  a vim package manager closely resembling
the one in emacs 24.

* FileTree
* bufexplorer
* gundo
* matchit
* nerdtree
* snipmate
* tabular
* taglist
* tree
* vim-colors-peaksea
* vim-colors-solarized
* vim-fugitive
* vim-fuzzyfinder
* vim-l9
* vim-latex
* vim-surround
* winmanager

## Installation ##

Installation     scripts     are     located    in     the     [scripts]
(https://github.com/nvasilakis/scripts) repo.  Run `wget n.vasilak.is/rc
&&  chmod +x  rc;  ./rc` to  install. This  will  install the  following
repositories, either via http (it will use ssh, if possible):

1. scripts, a tiny script library (scriptorium).
1. dotrc, the unix configuration files.
1. vimrc, the vim configuration and plug ins.

It will take care of creating the symbolic links and other minutiae.

Note : Only for this repository, one can use a manual clone and setup.

## TODO list ##

Write  a simple  package manager,  based on  Steve Losh's  code for  vim
history
