vim.g.filetype_bas="freebasic"

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("aug_freebasic", { clear = true }),
  pattern = {"freebasic"},
  desc = "Add mappings for freebasic.",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<F5>", "<cmd>update <bar> make % <bar> cwin<cr>", { silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>v", ":!./%<<cr>", { silent = true })
  end
})

