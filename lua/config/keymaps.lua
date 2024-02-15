-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opt = { silent = true, noremap = true }
local map = vim.api.nvim_set_keymap

map("n", "<leader>fg", ':lua require("telescope.builtin").live_grep()<CR>', opt)
map("n", "<leader>bco", ":BufferLineCloseOthers<CR>", opt)
map("i", "<C-e>", "<Esc>A", opt)

map("n", "<leader>bf", ":Neotree reveal buffers float<CR>", { desc = "Neotree buffer reveal float" })

map("n", "<C-h>", ":NvimTmuxNavigateLeft<CR>", opt)
map("n", "<C-j>", ":NvimTmuxNavigateDown<CR>", opt)
map("n", "<C-k>", ":NvimTmuxNavigateUp<CR>", opt)
map("n", "<C-l>", ":NvimTmuxNavigateRight<CR>", opt)
map("n", "<C-\\>", ":NvimTmuxNavigateLastActive<CR>", opt)
map("n", "<C-Space>", ":NvimTmuxNavigateNext<CR>", opt)

map("v", "<leader>p", '"0p', opt)
map("n", "<leader>y", [["+y]], opt)
map("n", "<leader>d", [["_d]], opt)

map("n", "<leader>no", ":noh<CR>", opt)

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
