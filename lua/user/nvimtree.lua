local ok, _ = pcall(require, 'nvim-tree')
if not ok then
  vim.notify("nvim-tree is not installed.")
  return
end

require "nvim-tree".setup({

})
