local status_ok, gitconf = pcall(require, 'git-conflict')
if not status_ok then
  vim.notify('git-conflict is not installed.')
  return
end

vim.api.nvim_set_hl(0, 'cfIncoming', { fg = "#ffffff", bg = "#1D3B40"});
vim.api.nvim_set_hl(0, 'cfCurrent', { fg = "#ffffff", bg = "#1D3450"});

gitconf.setup({
  default_mappings = {
    ours = 'co',
    theirs = 'ct',
    none = 'cn',
    both = 'cb',
    next = ']x',
    prev = '[x'
  },
  highlights = {
    incoming = 'cfIncoming',
    current = 'cfCurrent'
  },
})

