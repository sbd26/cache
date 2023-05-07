vim.defer_fn(function()
  require("bd26.dash").open()
  vim.cmd("set nobuflisted")
end, 0)

dofile(vim.g.binary .. "statusline")
vim.opt.statusline = "%!v:lua.require('bd26.statusline').run()"
require("bd26.customcommand")
require("bd26.tabufline.lazyload")
