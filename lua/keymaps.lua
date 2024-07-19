-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Move up and down. When there is a wrapped line move visually instead of moving by line number
vim.keymap.set({ 'n', 'x' }, 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Mantain visual mode after using '>>' or '<<' to indent
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Keep the cursor in the middle of the screen when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Paste without overriding the register
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste without overriding the register' })

-- Delete buffer
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = 'Buffer: delete buffer' })

-- Go to the next or previous diagnostic in current buffer
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next: diagnostic' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Prev: diagnostic' })
-- Go to the next or previous entry in the quickfix list
vim.keymap.set('n', ']q', '<cmd>cnext<CR>zz', { desc = 'Next: quickfix' })
vim.keymap.set('n', '[q', '<cmd>cprev<CR>zz', { desc = 'Prev: quickfix' })
-- Go to the next or previous entry in the location list
vim.keymap.set('n', ']e', '<cmd>lnext<CR>zz', { desc = 'Next: loclist' })
vim.keymap.set('n', '[e', '<cmd>lprev<CR>zz', { desc = 'Prev: loclist' })

-- Open floating dialog for diagnostic message under cursor
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Code: diagnostic message' })

-- vim: ts=2 sts=2 sw=2 et
