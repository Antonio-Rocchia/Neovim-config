local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- Auto-install lazy.nvim if not present
if not vim.loop.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup(
  {
    spec = {
      { import = "plugins.core" },
      { import = "plugins.theme" },
      -- extra
      { import = "plugins.extra.file-explorer" },
      { import = "plugins.extra.icons-support" },
      { import = "plugins.extra.mini" },
      { import = "plugins.extra.which-key" },
    },
    performance = {
      rtp = {
        -- disable rtp plugins
        disabled_plugins = {
        -- "gzip",
        -- "matchit",
        -- "matchparen",
        "netrwPlugin",
        -- "tarPlugin",
        "tohtml",
        "tutor",
        -- "zipPlugin",
        }
      }
    }
  }
)
