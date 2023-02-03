return {
  'marko-cerovac/material.nvim',
  -- lazy = false,
  event = "VeryLazy",
  priority = 1220,
  config = function()
    local material = require "material"
    local colors = require 'material.colors'
    require('material').setup({
      contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable darker background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
      },
      styles = { -- Give comments style such as bold, italic, underline etc.
      comments = { italic = true },
      strings = { bold = true },
      keywords = { --[[ underline = true ]] },
      functions = { bold = false },
      variables = {},
      operators = {},
      types = {},
    },
    plugins = { -- Uncomment the plugins that you use to highlight them
    -- Available plugins:
    -- "dap",
    -- "dashboard",
    "gitsigns",
    -- "hop",
    "indent-blankline",
    -- "lspsaga",
    "mini",
    -- "neogit",
    -- "nvim-cmp",
    -- "nvim-navic",
    -- "nvim-tree",
    "nvim-web-devicons",
    -- "sneak",
    "telescope",
    -- "trouble",
    "which-key",
  },
  disable = {
    colored_cursor = true, -- Disable the colored cursor
    borders = false, -- Disable borders between verticaly split windows
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false -- Hide the end-of-buffer lines
  },
  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = true -- Enable higher contrast text for darker style
  },
  lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
  async_loading = false, -- Load parts of the theme asyncronously for faster startup (turned on by default)
  custom_colors = function (c)
    c.editor.fg_dark = "#b3badb"
  end,
  custom_highlights = {
    rainbowcol1 = { fg = "#f9d202", bold = true },
    rainbowcol2 = { fg = "#d45ed2", bold = true },
    rainbowcol3 = { fg = "#179cfa", bold = true },
    rainbowcol4 = { fg = "#f9d202", bold = true },
    rainbowcol5 = { fg = "#d45ed2", bold = true },
    rainbowcol6 = { fg = "#179cfa", bold = true },
    rainbowcol7 = { fg = "#f9d202", bold = true },
    TelescopePromptPrefix = { fg = colors.main.purple },
    TelescopeTitle = { fg = colors.main.yellow },
  }, -- Overwrite highlights with your own
})
vim.g.material_style = "palenight"
 end
 }
