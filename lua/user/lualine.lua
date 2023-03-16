local status_ok, lualine = pcall(require, 'lualine')
if not status_ok then
  vim.notify('lualine is not installed.')
  return
end

lualine.setup({
  theme = 'dracula-nvim'
})
