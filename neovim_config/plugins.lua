-------- Packer.vim (https://github.com/wbthomason/packer.nvim)
-- You must run `PackerCompile` or `PackerSync` whenever you make changes to your plugin configuration
---- :PackerCompile -- Regenerate compiled loader file
---- :PackerClean -- Remove any disabled or unused plugins
---- :PackerInstall -- Clean, then install missing plugins
---- :PackerUpdate -- Clean, then update and install plugins
---- :PackerSync -- Perform `PackerUpdate` and then `PackerCompile`
---- :PackerLoad completion-nvim ale -- Loads opt plugin immediately

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
end)
