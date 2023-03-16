---@type MappingsTable
local M = {}

M.general = {

}

M.nvimtree = {
  plugin = true,
  n = {
    ["<D-e>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
  i = {
    ["<D-e>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.terminal = {
  --When in terminal insert mode, use <esc> to exit
  t = {
    ["<esc>"] = { "<C-\\><C-n>", "exit terminal insert mode", opts = { nowait = true } },
  },
}

return M
