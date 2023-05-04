dofile(vim.g.binary .. "statusline")
vim.opt.statusline = "%!v:lua.require('bd26.statusline').run()"
require("bd26.customcommand")
