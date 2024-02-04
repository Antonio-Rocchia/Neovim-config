-- oil.nvim https://github.com/stevearc/oil.nvim
return {
  'stevearc/oil.nvim',
  opts = {
    columns = {
      "icon",
      "permissions",
    },
    skip_confirm_for_simple_edits = true,
    use_default_keymaps = false,
    keymaps = {
      ["<CR>"] = "actions.select",
      ["<Esc>"] = "actions.close",
      ["<C-y>"] = "actions.copy_entry_path",
      ["`"] = "actions.cd",
      ["~"] = "actions.refresh",
      ["^"] = "actions.change_sort",
      ["-"] = "actions.parent",
      ["g?"] = "actions.show_help",
      ["gh"] = "actions.toggle_hidden",
      ["gt"] = "actions.open_terminal",
      ["gx"] = "actions.open_external",
    }
  },
  keys = function ()
    local oil = require("oil")
    local path = require("lib.path")
    return {
      { "<leader>e", function() oil.open(vim.loop.cwd()) end, { desc = "Explorer: open root" }},
      { "<leader>E", function()
          if vim.api.nvim_buf_get_name(0):sub(1, 3) == "oil" then
            return
          end
          oil.open(path.get_buf_parent())
        end,
        { desc = "Explorer: open relative to current buffer" }},
    }
  end,
}

