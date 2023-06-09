vim.defer_fn(function()
  require("bd26.dash").open()
  -- vim.cmd("set nobuflisted")
end, 0)

require("bd26.tabufline.lazyload")

dofile(vim.g.binary .. "statusline")
vim.opt.statusline = "%!v:lua.require('bd26.statusline').run()"
require("bd26.customcommand")

local kcmd = vim.api.nvim_create_user_command
kcmd("ShowMappings", function()
  if vim.g.nvcheatsheet_displayed then
    vim.cmd "bd"
  else
    require("bd26.cheatsheet.grid")()
  end
end, {})
