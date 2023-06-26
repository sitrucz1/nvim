vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("aug_python", { clear = true }),
  pattern = {"python"},
  desc = "Add mappings for python.",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>v", ":update <bar> !./%<cr>", { silent = true })
  end
})

