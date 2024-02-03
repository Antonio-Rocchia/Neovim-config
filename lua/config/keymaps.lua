local map = vim.keymap.set

--vim.keymap.del({ "i" }, "<C-j>")
--vim.keymap.del({ "i" }, "<C-k>")

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Clear search highlight with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move multiple lines up and down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Scroll code and keep cursor in the middle
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- In visual mode, after a selection, paste without replacing yanked text with the replaced one
map("x", "<leader>p", [["_dP]])

-- Move around the quickfix/location list
map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- read :h vim.diagnostic
map("n", "<leader>cd", vim.diagnostic.open_float)
map("n", "[d",         vim.diagnostic.goto_prev)
map("n", "]d",         vim.diagnostic.goto_next)
