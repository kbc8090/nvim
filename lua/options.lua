local o = vim.o
local g = vim.g

o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.autoindent = true
o.smartindent = true
o.confirm = true
o.hlsearch = true
o.showcmd = true
o.cmdheight = 1
o.scrolloff = 4
o.laststatus = 3
o.termguicolors = true
o.tabstop = 3
o.shiftwidth = 2
o.softtabstop = 3
o.expandtab = true
o.scrolloff = 3
o.cursorline = true
o.title = true
o.termguicolors = true
o.mouse = 'a'
o.updatetime = 140
o.splitright = true
o.splitbelow = true
o.number = true
o.wildmode = "longest:full,full"
o.relativenumber = true
o.ignorecase = true
o.smartcase = true
o.backup = false
o.pumblend = 10
o.undofile = true
o.swapfile = false
o.clipboard = "unnamedplus"
o.highlighturl_enabled = true
o.showmode = false
o.numberwidth = 3
-- o.signcolumn = "yes"
--vim.opt.statuscolumn = "%=%{v:virtnum < 1 ? (v:relnum ? v:relnum : v:lnum < 10 ? v:lnum . '  ' : v:lnum) : ''}%=%s"

vim.opt.fillchars = { eob = " " }
vim.opt.shortmess:append { s = true, I = true }

g.space_nvim_transparent_bg = true
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_getscript = 1
g.loaded_tutor = 1
g.loaded_matchparen = 1
g.loaded_logiPat = 1
g.loaded_rrhelper = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_netrwFileHandlers = 1
g.transparent_enabled = true

if vim.g.neovide then

  vim.opt.guifont = { "JetBrainsMonoNL NF", ":h12" }
  vim.g.neovide_transparency = 0.89
  vim.g.neovide_refresh_rate = 140
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_no_idle = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_antialiasing = true
  vim.api.nvim_set_hl(0, 'Normal', { bg = "#222638" }, true)

end
