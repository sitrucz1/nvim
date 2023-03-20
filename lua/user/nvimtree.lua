local ok, _ = pcall(require, 'nvim-tree')
if not ok then
  vim.notify("nvim-tree is not installed.")
  return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local on_attach = function(bufnr)

  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  -- default keymap
  api.config.mappings.default_on_attach(bufnr)
  -- my custom mappings
  vim.keymap.set('n', 'A', api.tree.expand_all, opts('Expand All'))
  vim.keymap.set('n', 'D', '', { buffer = bufnr })
  vim.keymap.del('n', 'D', { buffer = bufnr })
end

require "nvim-tree".setup({
  disable_netrw = false,
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  on_attach = on_attach,
})
