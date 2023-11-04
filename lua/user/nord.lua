local ok, nord = pcall(require, "nord")
if not ok then
  vim.notify("Nord colorscheme not found.")
  return
end

-- DEFAULTS unless uncommented
-- vim.g.contrast = false
-- vim.g.nord_borders = false
-- vim.g.nord_disable_background = false
-- vim.g.nord_cursorline_transparent = false
-- vim.g.nord_enable_sidebar_background = false
vim.g.nord_italic = false
-- vim.g.nord_uniform_diff_background = false
-- vim.g.nord_bold = true

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("nord_colorscheme", { clear = true }),
  pattern = "nord",
  desc = "Sets the diff highlighting for nord.",
  callback = function()
    local colors = require("nord.colors")
    local highlight = function(group, fg, bg, attr, sp)
      fg = fg and "guifg=" .. fg or "guifg=NONE"
      bg = bg and "guibg=" .. bg or "guibg=NONE"
      attr = attr and "gui=" .. attr or "gui=NONE"
      sp = sp and "guisp=" .. sp or ""
      vim.api.nvim_command("highlight " .. group .. " " .. fg .. " " .. bg .. " " .. attr .. " " .. sp)
    end

    if not vim.g.nord_uniform_diff_background then -- contrast
      highlight("DiffAdd", colors.nord1_gui, colors.nord14_gui, nil, nil)
      highlight("DiffChange", colors.nord1_gui, colors.nord14_gui, nil, nil)
      highlight("DiffDelete", colors.nord9_gui, nil, nil, nil)
      highlight("DiffText", colors.nord1_gui, colors.nord9_gui, "bold", nil)
    end
  end
})
