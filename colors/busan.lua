-- Busan colorscheme
-- Palette derived from ../theme.toml

if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "busan"

local p = {
  base = "#0C1529",
  beach = "#007EDA",
  gold = "#EFB908",
  dongbaek = "#CE7B68",
  leaf = "#889E05",
  horison = "#AC4712",
  mackerel = "#596B92",
  wakame = "#2C2A11",
  text = "#BDC1BB",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- UI
hi("Normal", { fg = p.text, bg = p.base })
hi("NormalNC", { fg = p.text, bg = p.base })
hi("CursorLine", { bg = p.mackerel })
hi("CursorColumn", { bg = p.mackerel })
hi("ColorColumn", { bg = p.wakame })
hi("LineNr", { fg = p.mackerel, bg = p.base })
hi("CursorLineNr", { fg = p.gold, bg = p.base, bold = true })
hi("SignColumn", { fg = p.mackerel, bg = p.base })
hi("VertSplit", { fg = p.mackerel, bg = p.base })
hi("WinSeparator", { fg = p.mackerel, bg = p.base })
hi("StatusLine", { fg = p.text, bg = p.wakame })
hi("StatusLineNC", { fg = p.mackerel, bg = p.wakame })
hi("Pmenu", { fg = p.text, bg = p.wakame })
hi("PmenuSel", { fg = p.base, bg = p.beach, bold = true })
hi("PmenuSbar", { bg = p.wakame })
hi("PmenuThumb", { bg = p.mackerel })
hi("Visual", { bg = p.mackerel })
hi("Search", { fg = p.base, bg = p.gold, bold = true })
hi("IncSearch", { fg = p.base, bg = p.beach, bold = true })
hi("MatchParen", { fg = p.gold, bg = p.wakame, bold = true })

-- Syntax
hi("Comment", { fg = p.mackerel, italic = true })
hi("Constant", { fg = p.gold })
hi("String", { fg = p.leaf })
hi("Character", { fg = p.leaf })
hi("Number", { fg = p.gold })
hi("Boolean", { fg = p.gold })
hi("Float", { fg = p.gold })
hi("Identifier", { fg = p.dongbaek })
hi("Function", { fg = p.beach, bold = true })
hi("Statement", { fg = p.horison })
hi("Conditional", { fg = p.horison })
hi("Repeat", { fg = p.horison })
hi("Label", { fg = p.horison })
hi("Operator", { fg = p.text })
hi("Keyword", { fg = p.horison, bold = true })
hi("Exception", { fg = p.horison })
hi("PreProc", { fg = p.beach })
hi("Include", { fg = p.beach })
hi("Define", { fg = p.beach })
hi("Macro", { fg = p.beach })
hi("PreCondit", { fg = p.beach })
hi("Type", { fg = p.dongbaek })
hi("StorageClass", { fg = p.dongbaek })
hi("Structure", { fg = p.dongbaek })
hi("Typedef", { fg = p.dongbaek })
hi("Special", { fg = p.gold })
hi("SpecialChar", { fg = p.gold })
hi("Tag", { fg = p.beach })
hi("Delimiter", { fg = p.text })
hi("SpecialComment", { fg = p.mackerel })
hi("Debug", { fg = p.horison })
hi("Underlined", { fg = p.beach, underline = true })
hi("Ignore", { fg = p.mackerel })
hi("Error", { fg = p.horison, bold = true })
hi("Todo", { fg = p.base, bg = p.gold, bold = true })

-- Treesitter
hi("@comment", { link = "Comment" })
hi("@string", { link = "String" })
hi("@string.special", { fg = p.gold })
hi("@character", { link = "Character" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@float", { link = "Float" })
hi("@constant", { link = "Constant" })
hi("@constant.builtin", { fg = p.gold, bold = true })
hi("@constant.macro", { fg = p.beach })
hi("@variable", { fg = p.text })
hi("@variable.builtin", { fg = p.dongbaek, italic = true })
hi("@variable.parameter", { fg = p.dongbaek })
hi("@variable.member", { fg = p.text })
hi("@property", { fg = p.text })
hi("@field", { fg = p.text })
hi("@function", { link = "Function" })
hi("@function.builtin", { fg = p.beach, bold = true })
hi("@function.macro", { fg = p.beach })
hi("@method", { fg = p.beach })
hi("@constructor", { fg = p.dongbaek, bold = true })
hi("@operator", { link = "Operator" })
hi("@keyword", { link = "Keyword" })
hi("@keyword.function", { fg = p.horison, bold = true })
hi("@keyword.operator", { fg = p.horison })
hi("@keyword.return", { fg = p.horison, bold = true })
hi("@conditional", { link = "Conditional" })
hi("@repeat", { link = "Repeat" })
hi("@label", { link = "Label" })
hi("@exception", { link = "Exception" })
hi("@type", { link = "Type" })
hi("@type.builtin", { fg = p.dongbaek, bold = true })
hi("@type.definition", { fg = p.dongbaek })
hi("@attribute", { fg = p.gold })
hi("@namespace", { fg = p.dongbaek })
hi("@module", { fg = p.dongbaek })
hi("@punctuation.delimiter", { fg = p.text })
hi("@punctuation.bracket", { fg = p.text })
hi("@punctuation.special", { fg = p.gold })
hi("@tag", { fg = p.beach })
hi("@tag.attribute", { fg = p.dongbaek })
hi("@tag.delimiter", { fg = p.mackerel })

-- Diagnostics
hi("DiagnosticError", { fg = p.horison })
hi("DiagnosticWarn", { fg = p.gold })
hi("DiagnosticInfo", { fg = p.beach })
hi("DiagnosticHint", { fg = p.leaf })
hi("DiagnosticOk", { fg = p.leaf })
hi("DiagnosticSignError", { fg = p.horison, bg = p.base })
hi("DiagnosticSignWarn", { fg = p.gold, bg = p.base })
hi("DiagnosticSignInfo", { fg = p.beach, bg = p.base })
hi("DiagnosticSignHint", { fg = p.leaf, bg = p.base })
hi("DiagnosticVirtualTextError", { fg = p.horison, bg = p.wakame })
hi("DiagnosticVirtualTextWarn", { fg = p.gold, bg = p.wakame })
hi("DiagnosticVirtualTextInfo", { fg = p.beach, bg = p.wakame })
hi("DiagnosticVirtualTextHint", { fg = p.leaf, bg = p.wakame })
hi("DiagnosticUnderlineError", { undercurl = true, sp = p.horison })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = p.gold })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = p.beach })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = p.leaf })

-- Diff
hi("DiffAdd", { fg = p.leaf, bg = p.wakame })
hi("DiffChange", { fg = p.beach, bg = p.wakame })
hi("DiffDelete", { fg = p.horison, bg = p.wakame })
hi("DiffText", { fg = p.gold, bg = p.wakame, bold = true })

-- Messages
hi("ErrorMsg", { fg = p.horison, bold = true })
hi("WarningMsg", { fg = p.gold, bold = true })
hi("MoreMsg", { fg = p.leaf })
hi("Question", { fg = p.beach, bold = true })

-- Common plugin highlights
-- GitSigns
hi("GitSignsAdd", { fg = p.leaf })
hi("GitSignsChange", { fg = p.beach })
hi("GitSignsDelete", { fg = p.horison })
hi("GitSignsAddLn", { fg = p.leaf })
hi("GitSignsChangeLn", { fg = p.beach })
hi("GitSignsDeleteLn", { fg = p.horison })

-- Telescope
hi("TelescopeNormal", { fg = p.text, bg = p.base })
hi("TelescopeBorder", { fg = p.mackerel, bg = p.base })
hi("TelescopePromptNormal", { fg = p.text, bg = p.wakame })
hi("TelescopePromptBorder", { fg = p.mackerel, bg = p.wakame })
hi("TelescopePromptTitle", { fg = p.base, bg = p.beach, bold = true })
hi("TelescopePreviewTitle", { fg = p.base, bg = p.leaf, bold = true })
hi("TelescopeResultsTitle", { fg = p.base, bg = p.gold, bold = true })
hi("TelescopeSelection", { bg = p.mackerel })
hi("TelescopeMatching", { fg = p.gold, bold = true })

-- NvimTree
hi("NvimTreeNormal", { fg = p.text, bg = p.base })
hi("NvimTreeNormalNC", { fg = p.text, bg = p.base })
hi("NvimTreeWinSeparator", { fg = p.mackerel, bg = p.base })
hi("NvimTreeFolderName", { fg = p.beach })
hi("NvimTreeOpenedFolderName", { fg = p.beach, bold = true })
hi("NvimTreeRootFolder", { fg = p.dongbaek, bold = true })
hi("NvimTreeIndentMarker", { fg = p.mackerel })
hi("NvimTreeExecFile", { fg = p.leaf })
hi("NvimTreeSpecialFile", { fg = p.gold, bold = true })
hi("NvimTreeImageFile", { fg = p.gold })
hi("NvimTreeGitNew", { fg = p.leaf })
hi("NvimTreeGitDirty", { fg = p.gold })
hi("NvimTreeGitDeleted", { fg = p.horison })

-- nvim-cmp
hi("CmpItemAbbr", { fg = p.text })
hi("CmpItemAbbrDeprecated", { fg = p.mackerel, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = p.gold, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = p.gold, bold = true })
hi("CmpItemKind", { fg = p.beach })
hi("CmpItemMenu", { fg = p.mackerel })

-- WhichKey
hi("WhichKey", { fg = p.gold, bold = true })
hi("WhichKeyGroup", { fg = p.beach })
hi("WhichKeyDesc", { fg = p.text })
hi("WhichKeySeperator", { fg = p.mackerel })
hi("WhichKeySeparator", { fg = p.mackerel })
hi("WhichKeyFloat", { fg = p.text, bg = p.wakame })
hi("WhichKeyBorder", { fg = p.mackerel, bg = p.wakame })

-- IndentBlankline (v3)
hi("IblIndent", { fg = p.wakame })
hi("IblScope", { fg = p.mackerel })
