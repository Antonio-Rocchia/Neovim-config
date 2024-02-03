return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    -- see :h nvim-treesitter-modules
    highlight = { enable = true },
    indent = { enable = true },
    -- Parser settings
    ensure_installed = {
      "lua",
      "html",
      "css",
      "javascript",
      "python",
      "bash",
    },
    auto_install = true,
  },

  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
