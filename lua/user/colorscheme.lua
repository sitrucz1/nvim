-- vim.cmd[[set t_8f=^[[38;2;%lu;%lu;%lum]]
-- vim.cmd[[set t_8b=^[[48;2;%lu;%lu;%lum]]
-- vim.cmd[[colorscheme dracula]]
-- vim.g.t_ut= ""
-- vim.g.t_Co = "256"
-- vim.opt.termguicolors = true

vim.opt.background = "dark"
vim.opt.termguicolors = true
pcall(vim.cmd, "colorscheme nord")
