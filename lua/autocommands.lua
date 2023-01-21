-- Various Commands to be executed at the end
vim.cmd("colorscheme bluloco-dark")
vim.cmd("highlight LineNr guibg=NONE")
vim.cmd("highlight VertSplit guibg=NONE")
vim.cmd("highlight SignColumn guibg=NONE")
vim.cmd("highlight CursorLineNr gui=bold")
-- vim.cmd("highlight Normal guibg=NONE")
--vim.cmd("highlight clear CursorLine")

-- Set cursor back to Beam when exiting Neovim
vim.cmd
[[
augroup change_cursor
au!
au ExitPre * :set guicursor=a:ver20
augroup END	
]]

-- change text/cfg/conf/conf to config for better coloring?
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = { "txt", "", "conf", "cfg" },
-- 	callback = function()
-- 		vim.cmd("set ft=config")
-- 	end,
-- })
--

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- go to last loc when opening a buffer
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
