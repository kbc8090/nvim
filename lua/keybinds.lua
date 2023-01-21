prefix_list = {} -- For key menu plugin.
vim.g.mapleader = " "
table.insert(prefix_list, {"n", "<Space>"})
local bind = vim.keymap.set

bind('n', '<leader>w', '<CMD>w<CR>', { desc = "Write File" })
bind('n', '<leader>q', '<CMD>q<CR>', { desc = "Quit" })
bind('n', 'cw', 'ciw')
bind('n', '<M-j>', '<CMD>vertical resize-5<CR>', { desc = "Decrease Size of Vertical Split" })
bind('n', '<M-k>', '<CMD>vertical resize+5<CR>', { desc = "Increase Size of Vertical Split" })
bind('n', '<leader>s', '<c-w>w', { desc = "Switch Between Vertical Splits" })
bind('n', '<leader>L', '<CMD>Lazy<CR>', { desc = "Lazy Menu" })
bind('n', '<leader>n', '<CMD>NeoTreeFocusToggle<CR>', { desc = "NeoTreeToggle Left Pane" })
bind('n', '<leader>N', '<CMD>NeoTreeFloatToggle<CR>', { desc = "NeoTreeToggle Floating" })
bind("n", "<TAB>", "<CMD>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
bind('n', '<leader>C', '<CMD>Telescope colorscheme<CR>')
bind('n', '<leader>b', '<CMD>bdelete<CR>', { desc = "Close Current Buffer" })
bind('n', '<leader>dt', '<CMD>Gitsigns diffthis<CR>', { desc = "Gitsigns Next Hunk" })

-------------------------------------------------------------------------------
-- Telescope Plugin
-------------------------------------------------------------------------------
local telescope_leader = vim.g.mapleader.."f"
table.insert(prefix_list, {"n", "<Space>t", {desc="Telescope"}})

bind("", telescope_leader.."/", "<CMD>Telescope current_buffer_fuzzy_find<CR>", {desc = "Search Current Buffer"})
bind("", telescope_leader.."f", "<CMD>Telescope find_files<CR>", {desc = "Find Files"})
bind("", telescope_leader.."F", "<CMD>Telescope find_files follow=true no_ignore=true hidden=true<CR>", {desc = "Find All Files"})
bind("", telescope_leader.."l", "<CMD>Telescope live_grep<CR>", {desc = "Live Grep Files"})
bind("", telescope_leader.."r", "<CMD>Telescope oldfiles<CR>", {desc = "Find Recent Files"})
bind("", telescope_leader.."t", "<CMD>Telescope<CR>", {desc = "All Telescope Options"})
