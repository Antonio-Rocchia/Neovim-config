return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  },
  keys = {
    -- Quick access
    { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>tg", "<cmd>Telescope grep_string<cr>", desc = "Search string under cursor" },
    { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Search string" },
  },
  opts = function ()
    local actions = require("telescope.actions")
    return {
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        sorting_strategy = "ascending",
        selection_strategy = "reset",
        scroll_strategy = "limit",
        mappings = {
          -- Keep insert mode simple so you don't need to memorize two keybinds for the same functionality
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<CR>"] = actions.select_default,
            ["<C-?>"] = actions.which_key,
            ["<Esc>"] = actions.close,
          },
          n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          --"trim", -- Remove indent from the presented line
        },
        set_env = { ["COLORTERM"] = "truecolor" },
        file_ignore_patterns = {},
      },
      pickers = {
        find_files = {
          follow = true,
        }
      },
    }
  end,
  config = function(_, opts)
    require('telescope').setup(opts)
    require('telescope').load_extension('fzf')
  end
}
