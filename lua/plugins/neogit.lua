return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    local neogit = require 'neogit'
    neogit.setup {}

    vim.keymap.set('n', '<leader>gd', function()
      neogit.open { 'diff' }
    end, { desc = 'Git: Diff' })

    vim.keymap.set('n', '<leader>gg', function()
      neogit.open {}
    end, { desc = 'Git: Neogit' })
  end,
}
