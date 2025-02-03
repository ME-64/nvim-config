-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.api.nvim_set_keymap

-- terminal easy normal mode remappings
local opts = { noremap = true, silent = true }
map("t", "<C-w><C-N>", "<C-\\><C-n>", opts)
map("t", "<C-w>N", "<C-\\><C-n>", opts)
map("t", "<C-w>h", "<C-\\><C-n><C-w>h", opts)
map("t", "<C-w>j", "<C-\\><C-n><C-w>j", opts)
map("t", "<C-w>k", "<C-\\><C-n><C-w>k", opts)
map("t", "<C-w>l", "<C-\\><C-n><C-w>l", opts)
map("t", "<C-w>c", "<C-\\><C-n><C-w>c", opts)
map("t", "<C-w>w", "<C-\\><C-n><C-w>w", opts)
map("t", "<C-w>s", "<C-\\><C-n><C-w>s", opts)
map("t", "<C-w>v", "<C-\\><C-n><C-w>v", opts)
map("t", "<C-w><C-h>", "<C-\\><C-n><C-w>h", opts)
map("t", "<C-w><C-j>", "<C-\\><C-n><C-w>j", opts)
map("t", "<C-w><C-k>", "<C-\\><C-n><C-w>k", opts)
map("t", "<C-w><C-l>", "<C-\\><C-n><C-w>l", opts)
map("t", "<C-w>:", "<C-\\><C-n><C-w>:", opts)

-- fold mapping
map("n", "zo", "zCzA", { noremap = false })
map("n", "zc", "zAzC", { noremap = false })
