return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")

      local builtin = require('telescope.builtin')
      -- Press '<leader>fr' for quick find/replace for the word under the cursor
      vim.keymap.set("n", "<leader>fr", function()
        local cmd = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>"
        local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
        vim.api.nvim_feedkeys(keys, "n", false)
      end)

      vim.keymap.set('n', '<leader>fws', function()
        local word = vim.fn.expand("<cword>")
        builtin.grep_string({ search = word })
      end)

      vim.keymap.set('n', '<leader>fWs', function()
        local word = vim.fn.expand("<cWORD>")
        builtin.grep_string({ search = word })
      end)

      vim.keymap.set('n', '<leader>ff', function()
        builtin.find_files({ hidden = true })
      end);

      vim.keymap.set('n', '<C-p>', builtin.git_files, {})

      vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})

      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

      vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols {})

      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = "[?] [S]earch [H]elp" })

      vim.keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "[?] Find recently opened files" })

      vim.keymap.set("n", "<leader>ss", function()
        require("telescope.builtin").spell_suggest(require("telescope.themes").get_dropdown({
          previewer = false,
        }))
      end, { desc = "[S]earch [S]pelling suggestions" })
    end,
  },
}
