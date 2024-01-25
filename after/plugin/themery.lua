-- Minimal config
require("themery").setup({
  themes = {"tokyonight", "catppuccin", "gruvbox", "rose-pine"}, -- Your list of installed colorschemes
  themeConfigFile = "~/.config/nvim/lua/mockingjay/themes.lua", -- Described below
  livePreview = true, -- Apply theme while browsing. Default to true.
})
