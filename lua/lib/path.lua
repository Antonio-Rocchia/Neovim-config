local M = {}

local ppath = require("plenary.path")

--- Returns the current buffer's parent path
--- @return string
function M.get_buf_parent()
  return ppath.parent(ppath:new(vim.api.nvim_buf_get_name(0))):make_relative()
end

return M
