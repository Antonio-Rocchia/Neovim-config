vim.g.mapleader = " "

local opt = vim.opt

vim.cmd.colorscheme "habamax"

opt.autowrite = true
opt.wildmode = "longest:full,full"
opt.splitbelow = true
opt.splitright = true
opt.shortmess:append({ W = true, I = true, c = true })
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.timeoutlen = 300

-- System integration
opt.mouse = 'a'
opt.clipboard = "unnamedplus"

-- Editing
opt.expandtab = true
opt.shiftround = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.wrap = false
opt.smartindent = true

opt.undofile = true
opt.backup = false
opt.swapfile = false
opt.undolevels = 10000

opt.updatetime = 200

-- Search releated
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true
opt.smartcase = true

-- Look
opt.completeopt = "menu,menuone,preview,noselect"
opt.pumblend = 10
opt.pumheight = 10
opt.scrolloff = 4
opt.number = true
opt.relativenumber = true
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.termguicolors = true

-- Diagnostic 
vim.diagnostic.config({
  -- update_in_insert = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

