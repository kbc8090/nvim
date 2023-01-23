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
o.mouse = 'a'
o.termguicolors = true
o.updatetime = 100
o.splitright = true
-- o.signcolumn = "yes"
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
--vim.opt.statuscolumn = "%=%{v:virtnum < 1 ? (v:relnum ? v:relnum : v:lnum < 10 ? v:lnum . '  ' : v:lnum) : ''}%=%s"

vim.opt.fillchars = { eob = " " }
vim.opt.shortmess:append { s = true, I = true }

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
