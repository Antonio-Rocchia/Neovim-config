-- [[ Setting options ]]
--  For more options, you can see `:help option-list`

-- Indenting rules
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
-- vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
--  As of nvim 0.10 it breaks netrw
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Disable line wrapping
-- vim.opt.wrap = false

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Write the contents of the file, if it has been modified, on each
-- `:next`, `:rewind`, `:last`, `:first`, `:previous`, `:stop`, etc...
-- vim.opt.autowrite = true

-- Show autocomplete menu even for just one entry,
-- don't select any entry by default
vim.opt.completeopt = 'menu,menuone,preview,noselect'

-- Show at most 10 autocomplete entries in the menu
vim.opt.pumheight = 10

-- Enable 24-bit color mode if the terminal supports it
vim.opt.termguicolors = true

-- vim: ts=2 sts=2 sw=2 et
