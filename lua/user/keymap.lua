vim.g.mapleader = ' '

local keymap = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true }
  )
end

keymap('', '<leader>ev', ':vsplit $MYVIMRC<cr>')
keymap('', '<leader>eev', ':e $MYVIMRC<cr>')
keymap('', '<leader>sv', ':source $MYVIMRC<cr>:noh<CR>')
keymap('', '<leader>qa', ':qa<cr>')
keymap('i', 'jk', '<esc>')
keymap('', '\\', '<C-w>')
keymap('', '\\\\', '<C-w>w')
keymap('', 'Y', 'y$')
keymap('', '<leader>gh', ':diffget LOCAL | diffupdate<cr>')
keymap('', '<leader>gl', ':diffget REMOTE | diffupdate<cr>')
keymap('', '<leader>gw', ':Gwrite<cr>')
keymap('', '<leader>l', ':set list!<CR>')
keymap('', '<leader>dws', ':%s/\\s\\+$<cr>')
keymap('', '<leader>"', 'viw<esc>a"<esc>hbi"<esc>lel')
keymap('', '<leader>g', ':!python %<CR>')
keymap('', '<leader>v', ':!cscript %<CR>')
keymap('', '<leader>,', ':%s/\\n/,/g<CR>$x0:noh<CR>')
keymap('', "<leader>'", ":%s/\\n/','/g<CR>I'<esc>$xx0:noh<CR>")
--Buffer prev/next
-- keymap('', '<tab>', ':bnext<cr>')
-- keymap('', '<S-tab>', ':bprev<cr>')
keymap('', '<leader>bd', ':bdelete<cr>')
keymap('', '||', ':qa<cr>')
-- Move lines up and down
if vim.fn.has('mac') > 0 then
  keymap('', '∆', '<A-j>')
  keymap('', '˚', '<A-k>')
end
keymap('', '<A-j>', ':m .+1<cr>==')
keymap('', '<A-k>', ':m .-2<cr>==')
keymap('i', '<A-j>', '<esc>:m .+1<cr>==gi')
keymap('i', '<A-k>', '<esc>:m .-2<cr>==gi')
keymap('v', '<A-j>', ":m '>+1<cr>gv=gv")
keymap('v', '<A-k>', ":m '<-2<cr>gv=gv")
-- indent un-indent
keymap('v', '>', '>gv')
keymap('v', '<', '<gv')
-- reindent
keymap('v', '=', '=gv')
-- telescope
-- keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ previewer = false })<cr>")
keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
keymap("n", "<leader>fp", "<cmd>lua require('telescope.builtin').planets{}<cr>")
-- nvim-tree
keymap("n", "<leader>p", ":NvimTreeToggle<cr>")
-- fugitive
keymap("n", "<leader>gs", ":G<cr>")

