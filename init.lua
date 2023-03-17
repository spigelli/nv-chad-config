local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- Set no cursorline
vim.opt.cursorline = false

if vim.g.neovide then
  -- Set font for neovide
  vim.o.guifont = "LiterationMonoNerdFontCompleteM Nerd Font:h9"

  local alpha = function()
    return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8)))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  -- vim.g.neovide_transparency = 0.0
  if vim.loop.os_uname().sysname == "Macos" then
    vim.g.neovide_transparency = 0.0
    vim.g.transparency = 0.95
    vim.g.neovide_background_color = "#0f1117" .. alpha()
  end

  -- Blur
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  -- Scroll Animation
  vim.g.neovide_scroll_animation_length = 0.3

  -- Refresh rate
  vim.g.neovide_refresh_rate = 240

  -- Command key
  vim.g.neovide_input_use_logo = true    -- true on macOS

  -- Alt on mac
  vim.g.neovide_input_macos_alt_is_meta = true

  -- Cursor animation
  vim.g.neovide_cursor_animation_length = 0.008

  -- Anti-aliasing
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = false
end

vim.opt.fillchars = "horiz:▬,horizup:┻,horizdown:┳,vert:┃,vertleft:┫,vertright:┣,verthoriz:╋,foldsep:┃"