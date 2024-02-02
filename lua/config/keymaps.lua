-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local map = Util.safe_keymap_set

map("n", "\\", ":Neotree toggle reveal_force_cwd<CR>", { desc = "Neotree toggle" })
map("n", "|", ":Neotree reveal<CR>", { desc = "Neotree reveal" })
map("n", "gd", ":Neotree float reveal_file=<cfile> reveal_force_cwd<cr>", { desc = "Neotree float reveal" })
map("n", "<leader>bf", ":Neotree reveal buffers float<CR>", { desc = "Neotree buffer reveal float" })


map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear highlights" })
