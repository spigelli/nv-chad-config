return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "c",
        "markdown",
        "markdown_inline",
      },
      indent = {
        enable = true,
        disable = {
          "python"
        },
      },
    },
  },
}