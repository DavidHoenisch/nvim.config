-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}


-- Color Scheme Configs

use {"catppuccin/nvim", as = "catppuccin"}
use {"ellisonleao/gruvbox.nvim"}
use {"folke/tokyonight.nvim"}
use {"zaldih/themery.nvim"}
use {"rose-pine/neovim", as = "rose-pine"}


-- Convenience plugins
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'

use 'neovim/nvim-lspconfig'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'L3MON4D3/LuaSnip'

use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {},-- Adds pretty icons to your documents
              --  ["core.completion"] = {},
              --  ["core.export.markdown"] = {}, 
              --  ["core.presentor"] = {},
              --  ["core.ui.calendar"] = {},
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes/general",
                            home = "~/notes/home",
                            work = "~/notes/work",
                        },
                    },
                },
            },
        }
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}


--use {
--    "nvim-neo-tree/neo-tree.nvim",
--    branch = "v3.x",
--    dependencies = {
--      "nvim-lua/plenary.nvim",
--      "nvim-tree/nvim-web-devicons", 
--      "MunifTanjim/nui.nvim",
--    }
--}

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

use {
    'steelsojka/pears.nvim',
}
use {
    'christoomey/vim-tmux-navigator'
}

use{
    "stevearc/oil.nvim",
    config = function()
    require("oil").setup()
    end,
    }

use {
    'voldikss/vim-floaterm'
}

-- install without yarn or npm
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

use {'nvim-tree/nvim-web-devicons'}

use "Myzel394/easytables.nvim"
use "folke/todo-comments.nvim"


-- Golang Plugins
use 'ray-x/go.nvim'
use 'ray-x/guihua.lua' -- recommended if need floating window support


-- code completion plugins

end)
