local ok, dracula = pcall(require, "dracula")
if not ok then
  vim.notify("dracula colorscheme not found.")
  return
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("dracula_colorscheme", { clear = true }),
  pattern = "dracula",
  desc = "Sets the diff highlighting for dracula.",
  callback = function()
    local colors = dracula.colors()
    local highlight = function(group, fg, bg, attr, sp)
      fg = fg and "guifg=" .. fg or "guifg=NONE"
      bg = bg and "guibg=" .. bg or "guibg=NONE"
      attr = attr and "gui=" .. attr or "gui=NONE"
      sp = sp and "guisp=" .. sp or ""
      vim.api.nvim_command("highlight " .. group .. " " .. fg .. " " .. bg .. " " .. attr .. " " .. sp)
    end

    highlight("DiffAdd", colors.bg, colors.green, nil, nil)
    highlight("DiffChange", colors.bg, colors.green, nil, nil)
    highlight("DiffDelete", colors.purple, nil, nil, nil)
    highlight("DiffText", colors.bg, colors.bright_blue, "bold", nil)
  end
})
