local status_ok, autopairs = pcall(require, 'nvim-autopairs')
if not status_ok then
  vim.notify('nvim-autopairs is not installed.')
  return
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" },
  check_ts = true,
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = [=[[%'%"%)%>%]%)%}%,]]=],
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    check_comma = true,
    highlight = 'Search',
    highlight_grey = 'Comment'
  },
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
  return
end
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
