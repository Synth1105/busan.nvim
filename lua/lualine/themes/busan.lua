-- Lualine theme for Busan

local p = {
  base = "#010313",
  beach = "#007EDA",
  gold = "#EFB908",
  dongbaek = "#CE7B68",
  leaf = "#889E05",
  horison = "#AC4712",
  mackerel = "#596B92",
  wakame = "#2C2A11",
  text = "#BDC1BB",
}

return {
  normal = {
    a = { fg = p.base, bg = p.beach, gui = "bold" },
    b = { fg = p.text, bg = p.wakame },
    c = { fg = p.text, bg = p.base },
  },
  insert = {
    a = { fg = p.base, bg = p.leaf, gui = "bold" },
    b = { fg = p.text, bg = p.wakame },
    c = { fg = p.text, bg = p.base },
  },
  visual = {
    a = { fg = p.base, bg = p.dongbaek, gui = "bold" },
    b = { fg = p.text, bg = p.wakame },
    c = { fg = p.text, bg = p.base },
  },
  replace = {
    a = { fg = p.base, bg = p.horison, gui = "bold" },
    b = { fg = p.text, bg = p.wakame },
    c = { fg = p.text, bg = p.base },
  },
  command = {
    a = { fg = p.base, bg = p.gold, gui = "bold" },
    b = { fg = p.text, bg = p.wakame },
    c = { fg = p.text, bg = p.base },
  },
  inactive = {
    a = { fg = p.mackerel, bg = p.base },
    b = { fg = p.mackerel, bg = p.base },
    c = { fg = p.mackerel, bg = p.base },
  },
}
