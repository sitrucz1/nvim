vim.g.filetype_p="pascal"
vim.g.filetype_pp="pascal"
vim.g.pascal_delphi=1
vim.g.pascal_symbol_operator=1
vim.g.pascal_fpc=1
vim.g.pascal_one_line_string=1
vim.g.pascal_no_tabs=1

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("aug_pascal", { clear = true }),
  pattern = {"pascal"},
  desc = "Add mappings for pascal.",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<F5>", "<cmd>update <bar> make % <bar> cwin<cr>", { silent = true })
    -- vim.api.nvim_buf_set_keymap(0, "n", "<F7>", "<cmd>update <bar> make -g % <bar> cwin<cr>", { silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>v", ":!./%<<cr>", { silent = true })
  end
})

