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

use({ 
	"catppuccin/nvim", as = "catppuccin", 

config = function()
  		vim.cmd.colorscheme "catppuccin"
	end
})
use('vimwiki/vimwiki')
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

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

use 'ray-x/go.nvim'
use 'ray-x/guihua.lua' -- recommended if need floating window support
use 'neovim/nvim-lspconfig'
use "Myzel394/easytables.nvim"
use "folke/todo-comments.nvim"
end)
