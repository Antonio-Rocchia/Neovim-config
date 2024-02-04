local map = vim.keymap.set

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Better up/down movement" })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Better up/down movement" })

-- Clear search highlight with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- better indenting
map("v", "<", "<gv", { desc = "Mantain visual mode selection after indent" })
map("v", ">", ">gv", { desc = "Mantain visual mode selection after indent" })

-- Move multiple lines up and down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up/down in visual mode" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up/down in visual mode" })

-- Scroll code and keep cursor in the middle
map("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor in the middle while scrolling" })
map("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in the middle while scrolling" })

-- In visual mode, after a selection, paste without replacing yanked text with the replaced one
-- map("x", "<leader>p", [["_dP]])

-- read :h vim.diagnostic
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Code: open diagnostic float" })
map("n", "[d", vim.diagnostic.goto_next, { desc = "Next: diagnostic" })
map("n", "]d", vim.diagnostic.goto_prev, { desc = "Prev: diagnostic" })

-- Move around the quickfix/location list
map("n", "]q", "<cmd>cnext<CR>zz", { desc = "Next: quickfix" })
map("n", "[q", "<cmd>cprev<CR>zz", { desc = "Prev: quickfix" })
map("n", "]e", "<cmd>lnext<CR>zz", { desc = "Next: loclist" })
map("n", "[e", "<cmd>lprev<CR>zz", { desc = "Prev: loclist" })
