local tonino_group = vim.api.nvim_create_augroup('tonino', { clear = true })

-- Highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  group = tonino_group,
  callback = function()
    vim.highlight.on_yank()
  end,
})
