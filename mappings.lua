---@type MappingsTable
local M = {}

M.general = {
  --When in terminal insert mode, use <esc> to exit
  t = {
    ["<esc>"] = { "<C-\\><C-n>", "exit terminal insert mode", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
