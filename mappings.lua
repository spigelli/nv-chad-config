---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>ih"] = {
      ":TSCaptureUnderCursor<CR>",
      "inspect highlight",
      { noremap = true, silent = false }
    },
  },
}

M.nvimtree = {
  plugin = true,
  n = {
    -- Pressing Cmd-E toggles the file picker
    ["<D-e>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
  i = {
    ["<D-e>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.tabufline = {
  n = {
    ["<D-S-]>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
    ["<D-S-[>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },
    ["<D-w>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
  i = {
    ["<D-S-]>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
    ["<D-S-[>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },
    -- close buffer + hide terminal buffer
    ["<D-w>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

M.comment = {
  n = {
    ["<D-/>"] = {     
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },
  },
  v = {
    ["<D-/>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },
}

M.terminal = {
  --When in terminal insert mode, use <esc> to exit
  t = {
    ["<esc>"] = { "<C-\\><C-n>", "exit terminal insert mode", opts = { nowait = true } },
  },
}

return M
