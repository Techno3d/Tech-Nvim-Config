" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " nvimlsp
    Plug 'neovim/nvim-lspconfig'
    " Java LSP
    Plug 'mfussenegger/nvim-jdtls'
    " Coq
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    " 9000+ Snippets
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}   
    " Debug
    Plug 'mfussenegger/nvim-dap'
call plug#end()
