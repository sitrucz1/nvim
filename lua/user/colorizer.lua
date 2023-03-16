local ok, colorizer = pcall(require, 'colorizer')
if not ok then
  vim.notify('colorizer is not installed.')
  return
end

colorizer.setup()
