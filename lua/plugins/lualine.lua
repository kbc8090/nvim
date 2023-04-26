return {
  "nvim-lualine/lualine.nvim",
  -- lazy = false,
  event = "VeryLazy",
  dependencies = {"nvim-tree/nvim-web-devicons"},
  config = function()
    local auto_theme_custom = require('lualine.themes.auto')
    auto_theme_custom.normal.c.bg = 'none'
    require("lualine").setup({
      options = {
        icons_enabled = true,
        globalstatus = true,
        disabled_filetypes = { statusline = { "lazy", "alpha", "TelescopePrompt" } },
        theme = auto_theme_custom,
      },
      sections = {
        lualine_c = {
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", path = 3, symbols = { modified = "  ", readonly = "[Read Only]", unnamed = "[No Name]" } },
        },
      },
    })
  end
}
