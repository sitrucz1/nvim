if not vim.g.loaded_fugitive == 1 then
  vim.notify("fugitive is not loaded.")
  return
end

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("aug_fugitive", { clear = true }),
  pattern = "fugitive",
  desc = "Add a mapping for fugitive.",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<tab>", "=", { silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>gp", ":Git pull<cr>", { silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>gP", ":Git push<cr>", { silent = true })
  end
})

vim.api.nvim_set_keymap("n", "<leader>ggs", ":Telescope git_status<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ggl", ":Telescope git_commits<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ggb", ":Telescope git_branches<cr>", { noremap = true, silent = true })
