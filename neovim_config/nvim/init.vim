"""""""" Default vim setting
:set number
:set relativenumber

:set smartindent
:set tabstop=4
:set expandtab
:set shiftwidth=4

"""""""" Change original vim command


" """""""" Add vim command
" " Resize splits recursively
" " https://stackoverflow.com/questions/3101253/vim-mapping-ctrl
" "" resize horzontal split window
" nmap <C-W><C-k> <C-W>-<C-W>-
" nmap <C-W><C-j> <C-W>+<C-W>+
" "" resize vertical split window
" nmap <C-W><C-l> <C-W>><C-W>>
" nmap <C-W><C-h> <C-W><<C-W><

" Color column
" https://vi.stackexchange.com/questions/356/how-can-i-set-up-a-ruler-at-a-specific-column
set colorcolumn=100,200
hi ColorColumn ctermbg=lightcyan guibg=blue
" You can set range of columns in color
" execute "set colorcolumn=" . join(range(81,335), ',')

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
Plug 'jiangmiao/auto-pairs'

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

"" LSP specification in Lua, e.g. (in ~/.config/nvim/lua/lspconfig_luaconfig.lua)
lua require('lspconfig_luaconfig')

"" LSP specification in Lua, e.g. (in ~/.config/nvim/lua/nvim-cmp_luaconfig.lua)
lua require('nvim-cmp_luaconfig')
