return {
  "windwp/nvim-ts-autotag",
  lazy = false,
  opts = function(_, opts)
    opts.setup = function()
      require("nvim-ts-autotag").setup()
    end
  end,
}
