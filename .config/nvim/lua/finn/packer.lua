auto-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
      -- Packer can manage itself
      use 'wbthomason/packer.nvim'

      -- theme
      use 'folke/tokyonight.nvim'

      --  parsing engine
      use {
          'nvim-treesitter/nvim-treesitter',
          run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
      }

      -- status line
      use {
          'nvim-lualine/lualine.nvim',
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
      }

      --  fuzzy finder
      use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
          requires = { {'nvim-lua/plenary.nvim'} }
      }
      use {
          'nvim-telescope/telescope-fzf-native.nvim',
          run = [[
          cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release &&
          cmake --build build --config Release && 
          cmake --install build --prefix build
          ]]
      }

      -- configs for nvim lsp client
      use 'neovim/nvim-lspconfig'

      -- completion
      use 'hrsh7th/nvim-cmp' -- core
      use 'hrsh7th/cmp-buffer' -- current buffer suggestions
      use 'hrsh7th/cmp-path' -- file path suggestions
      use 'hrsh7th/cmp-nvim-lsp' -- combining with lsp client
      use 'hrsh7th/cmp-cmdline' -- suggestions in cmd mode

      use 'hrsh7th/cmp-nvim-lua' -- nvim config suggestions

      use 'L3MON4D3/LuaSnip' -- snippet plugin
      use 'saadparwaiz1/cmp_luasnip' -- adapter for snippet + cmp 

      -- commenting
      use 'numToStr/Comment.nvim'
end)


