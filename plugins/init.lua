local util = require("custom.util")

local plugins = util.merge_submodules(
  vim.fn.stdpath("config") .. "/lua/custom/plugins"
)

return {}