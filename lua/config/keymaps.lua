-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "\\", ":Neotree toggle reveal_force_cwd<CR>", { desc = "Neotree toggle" })
map("n", "|", ":Neotree reveal<CR>", { desc = "Neotree reveal" })
map("n", "gd", ":Neotree float reveal_file=<cfile> reveal_force_cwd<cr>", { desc = "Neotree float reveal" })
map("n", "<leader>bf", ":Neotree reveal buffers float<CR>", { desc = "Neotree buffer reveal float" })


map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear highlights" })

local openCopilot = function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
        require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
    end
end

map({"n", "v"}, "<leader>cq", openCopilot, { desc = "CopilotChat - Quick chat", remap = true })
map({"n", "v"}, "<leader>cQ", ":CopilotChat", { desc = "CopilotChat - Open chat", remap = true })

