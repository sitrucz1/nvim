local ok, _ = pcall(require, 'nvim-tree')
if not ok then
  vim.notify("nvim-tree is not installed.")
  return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "nvim-tree".setup({
  disable_netrw = true,
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})
