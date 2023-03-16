local status_ok, ts = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  vim.notify('treesitter is not installed.')
  return
end

ts.setup({
  ensure_installed = { "lua", "python" }, -- parsers or or "all"
  sync_install = false,
  auto_install = true,
  ignore_install = nil,
  highlight = {
    enable = true,
    disable = nil, -- these are parsers not filetypes
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<leader>gnn",
      node_incremental = "<leader>grn",
      scope_incremental = "<leader>grc",
      node_decremental = "<leader>grm",
    },
  },
  indent = {
    enable = true,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
})
--[[
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter' }, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod = 'expr'
    vim.opt.foldexpr   = 'nvim_treesitter#foldexpr()'
  end
}) ]]
