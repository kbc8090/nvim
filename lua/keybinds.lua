vim.g.mapleader = " "
vim.g.maplocalleader = " "
local bind = vim.keymap.set

bind('n', '<leader>w', '<CMD>w<CR>', { desc = "Write File" })
bind('n', '<leader>q', '<CMD>q<CR>', { desc = "Quit" })
bind('n', 'cw', 'ciw')
bind('i', 'jk', '<ESC>')
bind('n', '<M-j>', '<CMD>vertical resize-5<CR>', { desc = "Decrease Size of Vertical Split" })
bind('n', '<M-k>', '<CMD>vertical resize+5<CR>', { desc = "Increase Size of Vertical Split" })
bind('n', '<leader>s', '<c-w>w', { desc = "Switch Between Vertical Splits" })
bind('n', '<leader>L', '<CMD>Lazy<CR>', { desc = "Lazy Menu" })
bind('n', '<leader>n', '<CMD>NeoTreeFocusToggle<CR>', { desc = "NeoTreeToggle Left Pane" })
bind('n', '<leader>N', '<CMD>NeoTreeFloatToggle<CR>', { desc = "NeoTreeToggle Floating" })
bind('n', '<TAB>', '<CMD>BufferLineCycleNext<CR>', { desc = "Next Buffer" })
bind('n', '<leader>C', '<CMD>Telescope colorscheme<CR>')
bind('n', '<leader>b', '<CMD>bdelete<CR>', { desc = "Close Current Buffer" })
bind('n', '<leader>dt', '<CMD>Gitsigns diffthis<CR>', { desc = "Gitsigns Next Hunk" })

-------------------------------------------------------------------------------
-- Telescope Plugin --
-------------------------------------------------------------------------------

bind('n', '<leader>f/', "<CMD>Telescope current_buffer_fuzzy_find<CR>", { desc = "Search Current Buffer" })
bind('n', '<leader>ff', "<CMD>Telescope find_files<CR>", { desc = "Find Files" })
bind('n', '<leader>fF', "<CMD>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "Find All Files" })
bind('n', '<leader>fl', "<CMD>Telescope live_grep<CR>", { desc = "Live Grep Files" })
bind('n', '<leader>fr', "<CMD>Telescope oldfiles<CR>", { desc = "Find Recent Files" })
bind('n', '<leader>ft', "<CMD>Telescope<CR>", { desc = "All Telescope Options" })
