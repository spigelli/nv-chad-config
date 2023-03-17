-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type HLTable
M.override = {}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}


local theme = require("custom.themes.github_dark_default").theme

local hl = function(group, fg)
  vim.api.nvim_set_hl(0, group, { fg=fg })
end

hl("typescriptExport", theme.red)
hl("typescriptExportDefault", theme.red)
hl("typescriptImport", theme.red)
hl("Function", theme.white)
hl("typescriptStatementKeyword", theme.red)
hl("tsxIntrinsicTagName", theme.green)
hl("tsxAttrib",theme.med_blue)
hl("tsxEqual", theme.med_blue)
hl("tsxTagName", theme.white)
hl("typescriptBraces", theme.white)
hl("typescriptFuncName", theme.white)
hl("typescriptNumber", theme.med_blue)
hl("tsxCloseString", theme.med_blue)
-- Selection: #1e4373

return M