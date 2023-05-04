dofile(vim.g.binary .. "statusline")
vim.opt.statusline = "%!v:lua.require('bd26.statusline').run()"

vim.defer_fn(function()
  require("bd26.dash").open()
end, 0)
