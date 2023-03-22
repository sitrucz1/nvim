local ok, bufferline = pcall(require, 'bufferline')
if not ok then
  vim.notify("bufferline is not installed.")
  return
end

bufferline.setup()
