-- Set CursorLineNR to a visible color using the Constant highlight provided by the colorscheme
local cursorline_fg = vim.api.nvim_get_hl_by_name("Constant", true)
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = cursorline_fg.foreground, bold = true })

-- Set the NeoTree indent line to the same color as indent-blankline provided by the colorscheme
-- local neotreelines = vim.api.nvim_get_hl_by_name("IndentBlanklineChar", true)
-- vim.api.nvim_set_hl(0, 'NeoTreeDimText', { fg = neotreelines.foreground })

-- Set cursor back to Beam when exiting Neovim
vim.api.nvim_create_autocmd({ "ExitPre" }, {
  pattern = "*",
  callback = function()
    vim.cmd.set('guicursor=a:ver20')
  end,
})

-- Spawn help window in vertical split
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = "help",
  callback = function()
    vim.cmd.wincmd('L')
  end,
})

-- Ignore mini-indentscope on alpha window if not lazy loaded
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})

-- Highlight on yank
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    vim.cmd.tabdo('wincmd =')
  end,
})

-- go to last loc when opening a buffer
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})


-- vim.api.nvim_create_augroup("rainbow", {
--   clear = true,
-- })
-- vim.api.nvim_create_autocmd({ "Filetype" }, {
--   pattern = "*",
--   callback = function()
--     vim.api.nvim_set_hl(0, "rainbowcol1", {
--       bold = true,
--       fg = vim.api.nvim_get_hl_by_name("Identifier", true).foreground,
--     })
--   end,
--   group = "rainbow",
-- })
