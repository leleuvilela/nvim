return {
  {
    "williamboman/nvim-lsp-installer",
    config = function()
      require("nvim-lsp-installer").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
  }
}
