"""""""" Default vim setting
:set number
:set relativenumber

:set smartindent
:set tabstop=4
:set expandtab
:set shiftwidth=4

"""""""" VIM-PLUG Plugin Manager (https://github.com/junegunn/vim-plug/wiki/tutorial)
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Install
"" Declare the list of plugins.
"" Run :PlugInstall to install plugins.
"" nvim-dap: https://github.com/mfussenegger/nvim-dap
Plug 'mfussenegger/nvim-dap'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Update
"" Run :PlugUpdate to update the plugins.
"" After the update is finished, you can review the changes by pressing D in the window.
"" Or you can do it later by running :PlugDiff.

" Delete
"" Delete or comment out Plug commands for the plugins you want to remove.
"" Reload vimrc (:source ~/.vimrc) or restart Vim
"" Run :PlugClean. It will detect and remove undeclared plugins.

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


"""""""" Load lua files
"" Plugin specification in Lua, e.g. (in ~/.config/nvim/lua/plugins.lua)
lua require('plugins')

"" LSP specification in Lua, e.g. (in ~/.config/nvim/lua/lsp_config.lua)
lua require('language_server_protocol')
