local config = {
  nvdash = {
    load_on_startup = true,

    header = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    },

    buttons = {
      { "  Find File",    "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Word",    "Spc f w", "Telescope live_grep" },
      { "  Bookmarks",    "Spc b m", "Telescope marks" },
      { "  Themes",       "Spc t h", "Telescope themes" },
      { "  Mappings",     "Spc c h", "NvCheatsheet" },
    },
  },
}



vim.defer_fn(function()
  require("bd26.dash").open()
  vim.cmd('set nobuflisted')
end, 0)



dofile(vim.g.binary .. "statusline")
vim.opt.statusline = "%!v:lua.require('bd26.statusline').run()"
require("bd26.customcommand")
require("bd26.tabufline.lazyload")
