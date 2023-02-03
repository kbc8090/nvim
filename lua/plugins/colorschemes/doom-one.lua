return {
  'NTBBloodbath/doom-one.nvim',
  -- lazy = false,
  event = "VeryLazy",
  priority = 900,
  init = function()
    -- Add color to cursor
    vim.g.doom_one_cursor_coloring = false
    -- -- Set :terminal colors
    -- vim.g.doom_one_terminal_colors = true
    -- -- Enable italic comments
    -- vim.g.doom_one_italic_comments = false
    -- -- Enable TS support
    vim.g.doom_one_enable_treesitter = true
    -- -- Color whole diagnostic text or only underline
    -- vim.g.doom_one_diagnostics_text_color = false
    -- -- Enable transparent background
    -- vim.g.doom_one_transparent_background = fase
    --
    -- -- Pumblend transparency
    -- vim.g.doom_one_pumblend_enable = false
    -- vim.g.doom_one_pumblend_transparency = 20
    --
    -- -- Plugins integration
    -- vim.g.doom_one_plugin_neorg = true
    -- vim.g.doom_one_plugin_barbar = false
     vim.g.doom_one_plugin_telescope = true
    -- vim.g.doom_one_plugin_neogit = true
    -- vim.g.doom_one_plugin_nvim_tree = true
    -- vim.g.doom_one_plugin_dashboard = true
    -- vim.g.doom_one_plugin_startify = true
     vim.g.doom_one_plugin_whichkey = true
     vim.g.doom_one_plugin_indent_blankline = true
    -- vim.g.doom_one_plugin_vim_illuminate = true
    -- vim.g.doom_one_plugin_lspsaga = false
    --
-- vim.api.nvim_create_augroup("rainbow", {
--   clear = true,
-- })
-- vim.api.nvim_create_autocmd({ "Filetype" }, {
--   pattern = "*",
--   callback = function()
--     vim.api.nvim_set_hl(0, "rainbowcol1", {
--       bold = true,
--       fg = vim.api.nvim_get_hl_by_name("Label", true).foreground,
--     })
--   end,
--   group = "rainbow",
-- })
  end
}
