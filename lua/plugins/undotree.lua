return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>bu', '<cmd>UndotreeToggle<CR>', { desc = 'Buffer: Undotree' })
  end,
}
