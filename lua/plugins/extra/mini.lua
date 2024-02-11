return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.comment").setup()
    require("mini.pairs").setup({
      mappings = {
        ["'"] = false,
        ['"'] = false,
        ["`"] = false,
        ["("] = { neigh_pattern = "[^\\]%W" },
        ["["] = { neigh_pattern = "[^\\]%W" },
        ["{"] = { neigh_pattern = "[^\\]%W" },
      },
    })
    require("mini.bufremove").setup()
  end,
}
