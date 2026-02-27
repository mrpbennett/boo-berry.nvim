local colors = require("boo-berry").colors()

local boo_berry = {}

local bg = colors.lualine_bg_color or colors.nontext

boo_berry.normal = {
  a = { bg = colors.purple, fg = colors.black, gui = "bold" },
  b = { bg = bg, fg = colors.purple },
  c = { bg = colors.bg, fg = colors.fg },
}

boo_berry.insert = {
  a = { bg = colors.green, fg = colors.black, gui = "bold" },
  b = { bg = bg, fg = colors.green },
}

boo_berry.visual = {
  a = { bg = colors.pink, fg = colors.black, gui = "bold" },
  b = { bg = bg, fg = colors.pink },
}

boo_berry.replace = {
  a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
  b = { bg = bg, fg = colors.yellow },
}

boo_berry.command = {
  a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
  b = { bg = bg, fg = colors.yellow },
}

boo_berry.inactive = {
  a = { bg = colors.bg, fg = colors.comment },
  b = { bg = colors.bg, fg = colors.comment },
  c = { bg = colors.bg, fg = colors.comment },
}

return boo_berry
