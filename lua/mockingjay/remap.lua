vim.g.maplocalleader = ","
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


-- nvin-tree remaps
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeFocus<CR>", {silent = true, noremap = true })


-- Neorg remaps
vim.api.nvim_set_keymap("n", "<leader>notes", ":Neorg workspace notes<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>work", ":Neorg workspace work<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>journal", ":Neorg journal today<CR>", {silent = true, noremap = true})


-- Oil
vim.api.nvim_set_keymap("n", "<leader>-", ":Oil<CR>", {silent = true, noremap = true})

-- Floaterm
vim.api.nvim_set_keymap("n", "<leader>tt", ":FloatermToggle<CR>i", {silent = true, noremap = true})


-- Use <Tab> and <S-Tab> to navigate through popup menu
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "<C-n>" : "<Tab>"', {expr = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "<C-p>" : "<Tab>"', {expr = true})
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? "<C-y>" : "<CR>"', {expr = true, noremap = true})

-- Set completeopt to have a better completion experience
vim.o.completeopt="menuone,noinsert,noselect"

-- Avoid showing message extra message when using completion
vim.o.shortmess = vim.o.shortmess .. "c"

-- Chain completion list
vim.g.completion_chain_complete_list = {
            default = {
              default = {
                  { complete_items = { 'lsp', 'snippet' }},
                  { mode = '<c-p>'},
                  { mode = '<c-n>'}},
              comment = {},
              string = { { complete_items = { 'path' }} }}}

vim.api.nvim_set_keymap("n", "<Leader>jq", ":%!jq .<CR><CR>", {silent = true, noremap = true})

vim.api.nvim_set_keymap("n", "<Leader>nt", ":EasyTablesCreateNew", {silent = true, noremap =true})
vim.api.nvim_set_keymap("n", "<Leader>et", ":ExportTable<CR>", {silent = true, noremap =true})
vim.api.nvim_set_keymap("n", "<Leader>it", ":EasyTablesImportThisTable<CR>", {silent = true, noremap =true})


-- buffer nav
vim.api.nvim_set_keymap("n", "<C-b>n", ":bNext<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-b>p", ":bprevious<CR>", {silent = true, noremap = true})


-- ray-x shortcuts
vim.api.nvim_set_keymap("n", "<Leader>ch", ":GoCheat<CR>", {silent = true, noremap = true})
