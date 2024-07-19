local git_ignored = setmetatable({}, {
  __index = function(self, key)
    local proc = vim.system({ 'git', 'ls-files', '--ignored', '--exclude-standard', '--others', '--directory' }, {
      cwd = key,
      text = true,
    })
    local result = proc:wait()
    local ret = {}
    if result.code == 0 then
      for line in vim.gsplit(result.stdout, '\n', { plain = true, trimempty = true }) do
        -- Remove trailing slash
        line = line:gsub('/$', '')
        table.insert(ret, line)
      end
    end

    rawset(self, key, ret)
    return ret
  end,
})

return {
  'stevearc/oil.nvim',
  opts = {
    columns = {
      'icon',
      -- "permissions",
    },
    skip_confirm_for_simple_edits = true,
    keymaps = {
      ['<Esc>'] = 'actions.close',
      ['`'] = 'actions.cd',
      ['~'] = 'actions.refresh',
      ['^'] = 'actions.change_sort',
      ['<BS>'] = 'actions.parent',
      ['gh'] = 'actions.toggle_hidden',
    },
  },

  view_options = {
    is_hidden_file = function(name, _)
      -- dotfiles are always considered hidden
      if vim.startswith(name, '.') then
        return true
      end
      local dir = require('oil').get_current_dir()
      -- if no local directory (e.g. for ssh connections), always show
      if not dir then
        return false
      end
      -- Check if file is gitignored
      return vim.list_contains(git_ignored[dir], name)
    end,
  },
  config = function(_, opts)
    local oil = require 'oil'
    oil.setup(opts)

    vim.keymap.set('n', '<leader>e', function()
      oil.open(vim.loop.cwd())
    end, { desc = '[e] Explore root dir' })

    vim.keymap.set('n', '<leader>E', function()
      oil.open(oil.get_current_dir(0))
    end, { desc = '[E] Explore parent dir' })
  end,
}
