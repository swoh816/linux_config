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
  -- lsp + nvim-cmp
  -- (https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion)
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- nvim-cmp recommended plugins
  -- (https://github.com/hrsh7th/nvim-cmp)
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
end)
