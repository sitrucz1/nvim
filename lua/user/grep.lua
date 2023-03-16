if vim.fn.executable('rg') > 0 then
    vim.opt.grepprg="rg --vimgrep --smart-case $*"
    vim.opt.grepformat="%f:%l:%c:%m"
    -- let g:ackprg = 'rg --vimgrep --smart-case'
elseif vim.fn.executable('ag') > 0 then
    vim.opt.grepprg="ag --vimgrep $*"
    vim.opt.grepformat="%f:%l:%c:%m"
    -- let g:ackprg = 'ag --vimgrep'
elseif vim.fn.executable('findstr') > 0 then
    vim.opt.grepprg="findstr /sn $*"
    vim.opt.grepformat="%f:%l:%m"
    -- let g:ackprg = 'findstr /sn $*'
end
-- let g:ack_use_cword_for_empty_search = 1
